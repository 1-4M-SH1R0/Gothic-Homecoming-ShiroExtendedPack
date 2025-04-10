function createRandomCharacter(gender) {
    // Define available skin colors
    local skinColors = [creator_race.PALE, creator_race.WHITE, creator_race.LATINO, creator_race.BLACK];

    // Randomly pick a skin color
    local skinColorIndex = rand() % skinColors.len();
    local skinColor = skinColors[skinColorIndex];

    // Step 1: Pick a body
    local bodyIndex = rand() % bodies[gender][skinColor].len();
    local _body = bodies[gender][skinColor][bodyIndex];
    local bodyInt = extractInteger(_body, "HUM_BODY_NAKED_V");

    // Step 2: Pick a head
    local headIndex = rand() % heads[gender].len();
    local head = heads[gender][headIndex];

    // Step 3: Pick a face
    local faceIndex = rand() % faces[gender][skinColor].len();
    local face = faces[gender][skinColor][faceIndex];
    local faceInt = extractInteger(face, "HUM_HEAD_V");

    // Step 4: Combine results into a visual representation
    local visual = [body[gender], bodyInt, head, faceInt];

    print("Random Character Created:");
    print("Gender: " + body[gender]);
    print("Skin Color: " + skinColor);
    print("Body: " + _body);
    print("Head: " + head);
    print("Face: " + face);
    print("Visual: " + format("visual = {\"%s\", %d, \"%s\", %d},", body[gender], bodyInt, head, faceInt));

    return visual;
}
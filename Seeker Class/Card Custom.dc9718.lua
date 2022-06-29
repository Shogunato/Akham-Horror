function onLoad()
    self.createButton({label="Pick\n Character", color={0.9, 0.7, 0.1}, font_size=80,
                       click_function="pickCharacter", function_owner=self,
                       position={-0.5, 1, 1}, width=500, height=250})
end

function pickCharacter()

    characterBag = getObjectFromGUID("50c60d")

    for k, v in pairs(characterBag.getObjects()) do
        if string.find(v.name, "Harvey Walters") then
            characterBag.takeObject({guid=v.guid, position=self.getPosition(), rotation={0, 180, 0}})
            self.clearButtons()
            return
        end
    end

end
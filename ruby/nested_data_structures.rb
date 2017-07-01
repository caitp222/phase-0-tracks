newspaper = {
  photo_desk: {
    display_name: "Photo Desk",
    staff: {
      photo_editor: "Catherine",
      assistant_photo_editors: ["Julian","Joey"]
    },
  },
  foreign_desk: {
    display_name: "International Desk",
    staff: {
      editor: "Lisa",
      reporters: ["Ahmad", "Diego", "Maya"],
      local_fixers: 140
    },
  },
  national_desk: {
    display_name: "National Desk",
    staff: {
      editor: "Sherman",
      reporters: ["Julia", "Ashley", "Jennifer"],
      local_freelancers: 98
    },
  },
}

p newspaper

#Jennifer quit the National Desk and Sara was hired instead

newspaper[:national_desk][:staff][:reporters][2] = "Sara"

p newspaper

#International desk decided to match its internal name to its public name

newspaper[:international_desk] = newspaper.delete(:foreign_desk)

p newspaper

#War breaks out in the Middle East and 20 new local fixers are hired by the International desk

newspaper[:international_desk][:staff][:local_fixers] =newspaper[:international_desk][:staff][:local_fixers] + 20

p newspaper

#Readers demand more photography online so another assistant photo editor is hired

newspaper[:photo_desk][:staff][:assistant_photo_editors] << "Lena"

p newspaper

#The National Desk editor quits and the company, in its infinite wisdom, delays hiring a new one as it's not an election year

newspaper[:national_desk][:staff][:editor] = nil

p newspaper



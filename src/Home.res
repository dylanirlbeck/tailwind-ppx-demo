let {string} = module(React)
let logo: string = %raw("require('./assets/logo.png')")

@react.component
let make = () =>
  <div className=%tw("h-screen justify-center flex items-center")>
    <div className=%tw("max-w-sm rounded overflow-hidden shadow-lg p-4")>
      <img className=%tw("w-full") src=logo alt="Sunset in the mountains" />
      <div className=%tw("px-6 py-4")>
        <div className=%tw("font-bold text-xl mb-2")> {"RE-Tailwind" |> string} </div>
        <p className=%tw("text-gray-700 text-base")>
          {"A reason react starter with tailwind" |> string}
        </p>
      </div>
      <div className=%tw("px-6 py-4")>
        {["Reason React", "Tailwind"]
        |> Array.map(tag =>
          <span
            key=tag 
            className=%tw(
              "inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mt-2"
            )>
            {"#" ++ tag |> string}
          </span>
        )
        |> React.array}
      </div>
    </div>
  </div>

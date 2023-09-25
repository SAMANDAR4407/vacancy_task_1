import 'package:vacancy_task/core/database/entity/news_entity.dart';

class MockList{

  MockList._privateConstructor();

  static final MockList instance = MockList._privateConstructor();

  List<NewsEntity> list = [
    NewsEntity(
        title: 'Lots of dignitaries but no real fireworks — only electronic flash — as the Asian Games open',
        publishedDate: '1 day ago',
        article: '''
        HANGZHOU, China (AP) — The opening ceremony of the Asian Games on Saturday in China offered all the staples of a major international sports event.

Dignitaries greeted General Secretary Xi Jinping, fans packed the 80,000-seat Olympic Sports Center Stadium in Hangzhou to capacity, and many of the 12,417 participants from 45 nations and territories paraded to officially open the two-week show.

By comparison, next year’s Paris Olympics will field about 10,500 competitors.

One big thing, however, was missing: real fireworks, the exploding kind that smell of power and burnt fuses. Instead, the high-tech games — billed of course as “green games” — offered electronic flash, 3D animations and a virtual torchbearer.

Xi was greeted by wild cheers when he appeared, and fans were handed LED star lights, adding sparkle to the stands when the lights dimmed and eight well-polished soldiers arrived carrying the national flag above their heads.

The loudest cheers were for the Chinese delegation, but Taiwan, North Korea and Hong Kong were also welcomed warmly. There were no audible jeers for any delegation.

Delayed for a year by the pandemic, the Asian Games are China’s largest sports event since the country scrapped its zero-COVID-19 policy early in the year.
        ''',
        image: 'https://dims.apnews.com/dims4/default/b4e1896/2147483647/strip/true/crop/3872x2582+0+0/resize/1440x960!/format/webp/quality/90/?url=https%3A%2F%2Fassets.apnews.com%2F0e%2F3e%2F37040f5b4b51a039cc83cfcd7533%2F66438738ba684e7f9287e7cdf72f0385'
    ),
    NewsEntity(
        title: 'Amazon steps up AI race with up to \$4 billion deal to invest in Anthropic',
        publishedDate: '8h ago',
        article: '''
        SAN FRANCISCO, Sept 25 (Reuters) - Amazon.com (AMZN.O) on Monday said it will invest up to \$4 billion in cash in the high-profile startup Anthropic, in its effort to compete with growing cloud rivals on artificial intelligence.

Amazon's employees and cloud customers will gain early access to technology from Anthropic as part of the deal, which they can infuse into their businesses. The San Francisco-based startup also committed to rely primarily on Amazon's cloud services, including training its future AI models on large quantities of proprietary chips it would buy from the online retailing and computing giant.

In a joint interview, the CEOs of Amazon's cloud division and Anthropic said the immediate investment will be \$1.25 billion, with either party having the authority to trigger another \$2.75 billion in funding by Amazon.

They declined to state how much Amazon now would own of Anthropic or the startup's updated valuation, last estimated at more than \$4 billion. Amazon said it would not gain a board seat and that its stake amounted to a minority position.

The news represents perhaps Amazon's biggest answer yet to challenges from Microsoft (MSFT.O) and Alphabet's (GOOGL.O) Google, smaller cloud rivals that have marketed or developed powerful AI this year. The deal also shows ongoing maneuvering by the cloud companies to secure ties with AI startups reshaping their industry.

Since 2019, Microsoft has put billions of dollars into its partnership with ChatGPT's creator OpenAI, giving its customers special access to the startup's prose-writing, image-generating technology.

Google meanwhile helped pioneer this branch of AI and in May invested in Anthropic's \$450-million fundraise, in a relationship the startup said is not going away.

For Amazon, Monday's deal may spell an uptick in demand, including for chips powering AI. Anthropic agreed to work on developing technology for Amazon's in-house Trainium and Inferentia chips, for instance.

Adam Selipsky, Amazon Web Services's CEO, said the pact "will help make Anthropic's models better, will help make our chip technology and our AI infrastructure better."

Dario Amodei, Anthropic's CEO, said his company "has obtained the money in a way that allows it to prioritize safety" and "allows us to continue to scale up our models."
        ''',
        image: 'https://www.reuters.com/resizer/8FqE3JCH88bUOYrM6HMp98MXlLI=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/SSPAZIJD7BILFFPEPDDKZVWUEE.jpg',
    ),
    NewsEntity(
        title: 'Analysis: UK\'s fossil fuel car ban delay may only stall investment',
        publishedDate: '14h ago',
        article: '''
LONDON, Sept 25 (Reuters) - Britain's decision to delay a ban on new fossil fuel car sales may make little difference to the pace of a shift to electric vehicles (EVs), even though the news drew anger from automakers worried about supply chains and investment uncertainty.

UK Prime Minister Rishi Sunak, who is expected to face a tough election in 2024, said the five-year delay to 2035 was not political and was about "doing what's right for the country".

Following polarised debate over emissions charges on older more polluting vehicles, he said he was seeking to help those stung by the cost-of-living crisis and unable to afford expensive EVs.

Industry analysts, however, said Sunak above all had undermined investment certainty when British companies are fighting to attract investors to a relatively small market cut loose from the European Union following Brexit.

Announced in 2020, the 2030 ban was touted by then prime minister Boris Johnson, with whom Sunak has clashed, as a way to establish British global EV leadership. The UK goal was ahead of the 2035 ban in the European Union, where most British-made cars are sold.

"We should have been at 2035 from day one, but it moved because it's become part of a political debate," said Philip Nothard, UK insight and strategy director at car dealer services company Cox Automotive. "The timing sends the message that things can change again, making it difficult for companies to manage their investment strategies."

Already the 2030 deadline had some flexibility.

In the government's original proposal, under a zero emission vehicle (ZEV) mandate on how many EVs carmakers have to sell, 80% of new cars sold in the UK would be fully electric by 2030 - with low emission hybrids allowed until 2035.

Under the new mandate that the government could make public as early as this week, the 80% 2030 electric target should remain - with the other 20% a mixture of fossil fuel models and hybrids until 2035.

While some carmakers have complained, Jaguar Land Rover said: "We look forward to the certainty the ZEV Mandate will bring."

In 2022, around 1.6 million new cars were sold in Britain, just 2% of global sales, meaning the country has little impact on overall figures.

Global carmakers have already bet big on electric - partly because it is too expensive to make combustion engine cars while also investing heavily in EVs.

Britain's delay "won't make much of a difference," said Andy Leyland, managing director of Supply Chain Insights. "Legacy automotive needs to go full electric to be able to compete on cost with Tesla and Chinese producers."
''',
        image: 'https://www.reuters.com/resizer/Ki0DrL142EZASm7DDfZ4wkQF2Mc=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/4Y4S5L4PRNKERNEWKJJKR5W3BY.jpg',
    ),
    NewsEntity(
      title: "Apple's flagship Shanghai store buzzes as iPhone 15 goes on sale",
      publishedDate: "22.09.2023",
      article: '''
      SHANGHAI/BEIJING, Sept 22 (Reuters) - Over a hundred customers queued inside Apple's (AAPL.O) flagship store in the Chinese financial hub of Shanghai on Friday, waiting to pick up their iPhone 15 orders on the first day of in-store availability.

How Apple's latest iPhone sells in China is under close scrutiny by fans and market watchers alike, after widening curbs on iPhone use by government staff and the release of a high-end rival from domestic manufacturer Huawei (HWT.UL) sparked concern about demand for the device in its third-largest market.

But the strength of pre-orders in the world's second-largest economy, which began last Friday, has eased worries, with delivery times pushed into November and the premium iPhone 15 Pro and Pro Max selling out in just one minute on Alibaba's (9988.HK) Tmall e-commerce site.

Local media reported the queue at the store on Shanghai's East Nanjing road shopping belt started forming at 5 a.m. (1000 GMT).

Among those at the store was social media influencer Zhang Ming, 25, who said she wanted to try out the iPhone 15 after being unsuccessful in pre-ordering online.

"I always like to look (at the new devices). When I buy Apple products I only look at the colour. If I like the colour I will buy it," she said.

The iPhone 15 includes a new titanium shell, a faster chip and improved videogame-playing abilities. Apple also surprised by not raising prices, reflecting the global smartphone slump.

But some customers at the store lamented the lack of significant upgrades from the previous model. Real estate worker Wang Puyu, 29, said he was only purchasing a new model because he had promised to give his iPhone 14 to his nephew.

"I normally upgrade every year. But this year, I am not very satisfied."
      ''',
      image: "https://www.reuters.com/resizer/XiE2enBXJ1TrLu6-WnGFp3KZklM=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/QN53HXYFDRIZXJKKPHRPCZYM4M.jpg"
    ),
    NewsEntity(
      title: "Sponsor an ocean - tiny Pacific island comes up with novel way to protect waters",
      publishedDate: "21.09.2023",
      article: '''
      The island hopes to raise more than \$18m (£14.6m) from the scheme by selling 127,000 sq/km units - with the money used to fight against illegal fishing and plastic waste.
      
      The tiny Pacific island nation of Niue has come up with a novel way to protect its waters from illegal fishing and plastic waste - it will ask people to sponsor parts of its ocean.

Niue's premier Dalton Tagelagi has said individuals or companies can pay \$148 (£120) to protect 1sq/km (around 250 acres) of ocean for a period of 20 years.

The island hopes to raise more than \$18m (£14.6m) from the scheme by selling 127,000 sq/km units, representing the 40% of its waters that form a no-take marine protected area.

A no-take protected area is where removing or destroying natural or cultural resources is prohibited.

The sponsorship money would be used to protect the waters from illegal fishing and plastic waste.

Unregulated fishing can deplete fish stocks which then cannot replenish, while plastics can be ingested by or entangle marine wildlife.

Human-caused climate change has also led to warmer and more acidic oceans, altering ecosystems for underwater species.

In an interview before launching the scheme in New York on Tuesday, Mr Tagelagi said people have always had a close connection with the sea.

"Niue is just one island in the middle of the big blue ocean," Mr Tagelagi said. "We are surrounded by the ocean, and we live off the ocean. That's our livelihood."

MOST READ
Army on standby after armed police revolt over murder charge
Odesa and Crimea attacked from the air; three assumptions that need to hold for Ukrainian breakthrough; 'spy network' taken down | War latest
Gymnastics Ireland fails to apologise after Simone Biles criticism over black girl snubbed at medal ceremony
Monday's national newspaper front pages
Mafia boss arrested after 30 years on run dies
Watch Live
Videos
He said Niueans inherited and learned about the ocean from their forefathers and they want to be able to pass it on to the next generation in sustainable health.
      ''',
      image: "https://e3.365dm.com/23/09/1600x900/skynews-niue-pacific-island_6292213.jpg?20230921060213"
    ),
    NewsEntity(
      title: "Sir Brian May 'immensely proud' to be part of Osiris-Rex asteroid sample team",
      publishedDate: "12h ago",
      article: '''
      The Queen guitarist sends a message of support to the team he helped by identifying where Osiris-Rex could grab a sample from the asteroid.
      
      Sir Brian May has said he is "immensely proud" to be part of the team who successfully collected NASA's first asteroid samples from deep space.

A capsule containing around 250g of rocks and dust collected from asteroid Bennu touched down in the Utah desert near Salt Lake City on Sunday.

Earlier in the day, the Osiris-Rex spacecraft released the sample capsule around 63,000 miles out during a flyby of Earth.

Queen guitarist and astrophysicist Sir Brian aided the mission by helping to identify where Osiris-Rex could grab a sample from the asteroid.

In a message of support shown on NASA TV, Sir Brian said: "Hello Nasa folks, space fans, asteroid aficionados, this is Brian May of Queen but also I'm immensely proud to be a team member of Osiris-Rex.

"I can't be with you today, I wish I could, I'm rehearsing for a Queen tour, but my heart is there with you as this precious sample is recovered.

"Happy sample return day and congratulations to all who worked so incredibly hard on this mission."

The rocker particularly praised his "dear friend" Dante Lauretta, who he created the book Bennu 3-D: Anatomy of an Asteroid with, which is a 3D atlas of the asteroid.

The sample is the US space agency's first mission to collect a sample from an asteroid and the first by any agency since 2020.
      ''',
      image: "https://e3.365dm.com/23/09/1600x900/skynews-brian-may-nasa-queen_6297366.png?20230924234127"
    ),
    NewsEntity(
      title: "GitHub’s Innovation Graph offers ongoing data about software development",
      publishedDate: "22.09.2023",
      article: '''
      The Innovation Graph is a new resource that offers ongoing data about software development in various global economies. It was recently launched with a dedicated webpage and repository. 

This resource provides quarterly data on various aspects of software development, including Git activity, developers, organizations, repositories, programming languages, software licenses, topics, and economic collaborations, starting from 2020. 

The platform also offers various data visualizations, and detailed information about their data collection methods is available in their repository. Importantly, all the data is available for download and is licensed under CC0-1.0, meaning it can be used freely.

The Innovation Graph is aimed at benefiting researchers, policymakers, and developers by providing accessible data. A study commissioned by GitHub revealed that researchers in fields like international development, public policy, and economics had a desire to use GitHub data but encountered obstacles in accessing and utilizing it. 

The Innovation Graph is designed to address these challenges by making data more readily available. It will not only assist researchers in the mentioned fields but also benefit those in other disciplines who can now access aggregated data conveniently without relying on third-party data providers or facing data unavailability issues.

Developers will be able to see and explore the broader context for their contributions, for example, how developers collaborate across the global economy, or how the particular language or topic they are interested in is trending around the world.

Additional details are available here.
      ''',
      image: "https://sdtimes.com/wp-content/uploads/2023/09/Screen-Shot-2023-09-21-at-12.28.00-PM-1-490x265.jpg"
    ),
    NewsEntity(
      title: "Amazon announces new developer tools for building with Alexa",
      publishedDate: "21.09.2023",
      article: '''
      Amazon has unveiled the future of Alexa, revealing plans to harness the power of a specialized large language model (LLM) optimized for voice interactions. This development is expected to enhance the user experience with Alexa, making interactions more natural and conversational.

The company emphasized the importance of involving developers in this journey to shape and construct innovative ambient experiences for their shared customer base. To facilitate this collaboration, Amazon introduced new tools that leverage advances in generative AI technology, streamlining the process of building Alexa skills. 

These tools will empower developers to create a wide range of experiences, such as accessing real-time data, enjoying immersive generative AI-enhanced games, making restaurant reservations, receiving concise summaries of trending news stories, and more.

Developers will have the flexibility to integrate content and APIs with Alexa’s LLM to craft conversational experiences for Alexa-enabled devices. Alternatively, they can opt to integrate with an LLM of their choice. Regardless of the path chosen, developers will not need to delve into complex coding or train specific interaction models.

During the development phase, developers will provide essential components, including the skill manifest, API specifications, content sources, and natural language descriptions. At runtime, Alexa will autonomously identify the appropriate provider, orchestrate API calls, and retrieve content based on user context, device context, and memory, which encompasses conversation history and event timelines.

Other new capabilities include the ability to connect APIs and content with Alexa’s LLM. Users are just required to provide three components:

      1. API Endpoints and Definitions: Users should furnish the API endpoints and their respective definitions.
      2. Natural Language Annotations and Descriptions: Users are expected to provide natural language annotations and descriptions for both their APIs and the underlying business logic.
      3. CX Examples for API Calls: Users need to supply customer experience (CX) examples that specify when the APIs should be called.
      ''',
      image: "https://sdtimes.com/wp-content/uploads/2023/09/alexa.png"
    ),
    NewsEntity(
      title: "Bard now connects to Google apps and services",
      publishedDate: "19.09.2023",
      article: '''
      Google has unveiled its most advanced model of its conversational AI, Bard, to date, introducing enhanced integration with Google apps and services to provide more helpful responses. Additionally, Bard has refined its “Google it” feature to verify answers, and its expanded capabilities are now available in a wider range of contexts and Google applications, including Gmail, Docs, Drive, Google Maps, YouTube, and Google Flights.

“We’re committed to protecting your personal information. If you choose to use the Workspace extensions, your content from Gmail, Docs and Drive is not seen by human reviewers, used by Bard to show you ads or used to train the Bard model. And of course, you’re always in control of your privacy settings when deciding how you want to use these extensions, and you can turn them off at any time,” Yury Pinsky, director of product management at Bard wrote in a blog post. 

Bard is introducing a feature that simplifies building upon shared conversations. Users can now continue discussions and pose additional questions on a shared Bard chat via a public link. This allows for an easy expansion of the conversation or the initiation of new ideas based on the shared content.

Bard is also extending access to features previously available only in English to over 40 languages. This includes capabilities like image uploads with Lens, search images within responses, and the ability to modify Bard’s responses.

“All of these new features are possible because of updates we’ve made to our PaLM 2 model, our most capable yet. Based on your feedback, we’ve applied state-of-the-art reinforcement learning techniques to train the model to be more intuitive and imaginative. So, whether you want to collaborate on something creative, start in one language and continue in one of 40+ others, or ask for in-depth coding assistance, Bard can now respond with even greater quality and accuracy,” Pinsky added

      ''',
      image: "https://sdtimes.com/wp-content/uploads/2023/09/Screen-Shot-2023-09-19-at-11.18.46-AM-490x349.jpg"
    ),
    NewsEntity(
      title: "Report: The major challenges for development teams in 2023",
      publishedDate: "24.03.2023",
      article: '''
      Finding developers with the right set of skills for the job will continue to be a major challenge for businesses in 2023. 

The U.S. Department of Labor is estimating that there will be a shortage of 85.2 million developers by 2030, and over a third of respondents to Reveal’s latest survey on development struggles said that they are continuing to struggle with finding developers that have the necessary skills. 

According to Reveal, companies are attempting to overcome the skills challenge by adopting new technologies that will lower demand on developers, such as low-code tools.

Using low-code tools has solved the challenges associated with the developers skills shortage in 76% of organizations, according to the report. 

“This approach is helping alleviate the demand for developers by reducing the need for heavy hand-coding in areas like screen design, UX flows, theming, and branding and can all but eliminate the need for manual HTML & CSS tweaking,” the report states.

The survey found that the hardest roles to fill are DevOps engineer, data analytics developer, and IT security engineer.

The second biggest challenge, cited by another third of respondents, is keeping existing employees safe, and the third biggest challenge is limited resources. 

Development teams plan to improve resource utilization by improving project management (30%), improving designer/developer collaboration (30%), using software that will work for citizen developers (27%), utilizing remote staff (25%), and incorporating a data or analytics catalog (25%).

“Over the past three years, workers have been faced with a series of unexpected challenges — the COVID-19 pandemic, an economic downturn, and a volatile work environment– which is pushing employers to do more to assure workers are protected. Employers that take steps to protect their employees will be more likely to retain them, especially in light of the developer shortage,” according to the report.

Developers themselves are also struggling with a number of issues, including not being able to keep up with developer tool innovation, difficulty with third party integration, struggle to manage workloads, security threats, project management, and client expectations that are too high. 
      ''',
      image: "https://sdtimes.com/wp-content/uploads/2023/03/code-1839406_960_720-490x327.jpeg"
    )
  ];
}
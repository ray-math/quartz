import { PageLayout, SharedLayout } from "./quartz/cfg"
import * as Component from "./quartz/components"

// components shared across all pages
export const sharedPageComponents: SharedLayout = {
  head: Component.Head(),
  header: [
  ],
  afterBody: [],
  footer: Component.Footer({
    links: {
      "Youtube": "https://www.youtube.com/@Ray수학",
    },
  }),
}

// components for pages that display a single page (e.g. a single note)
export const defaultContentPageLayout: PageLayout = {
  beforeBody: [
    Component.Breadcrumbs(),
    Component.ArticleTitle(),
    Component.ContentMeta(),
    //Component.TagList(),
  ],
  left: [
    Component.PageTitle(),
    Component.Search(),
    Component.Darkmode(),
    Component.MobileOnly(Component.Spacer()),
    Component.Explorer(),
  ],
  right: [
    Component.DesktopOnly(Component.Graph()),
    Component.DesktopOnly(Component.TableOfContents()),
    Component.Backlinks(),
    Component.DesktopOnly(Component.RecentNotes({
      title: "Recent Posts",
      limit: 3,
      filter: (f) => (
        f.slug! !== "index"      ),
      linkToMore: "/all-notes" as SimpleSlug,  // posts 페이지로 연결
      showTags: false,  // 태그 숨기기
    })),
  ],
}

// components for pages that display lists of pages  (e.g. tags or folders)
export const defaultListPageLayout: PageLayout = {
  beforeBody: [
    Component.Breadcrumbs(), 
    Component.ArticleTitle(), 
    Component.ContentMeta(),
  ],
  left: [
    Component.PageTitle(),
    Component.MobileOnly(Component.Spacer()),
    Component.Search(),
    Component.Darkmode(),
    Component.Explorer(),
  ],
  right: [],
}

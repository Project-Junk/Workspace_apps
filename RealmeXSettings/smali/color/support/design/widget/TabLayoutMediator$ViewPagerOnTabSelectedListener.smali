.class Lcolor/support/design/widget/TabLayoutMediator$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "TabLayoutMediator.java"

# interfaces
.implements Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/design/widget/TabLayoutMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# instance fields
.field private final mViewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Lcolor/support/design/widget/TabLayoutMediator$ViewPagerOnTabSelectedListener;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcolor/support/design/widget/ColorTabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcolor/support/design/widget/ColorTabLayout$Tab;)V
    .locals 2

    .line 299
    iget-object v0, p0, Lcolor/support/design/widget/TabLayoutMediator$ViewPagerOnTabSelectedListener;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getPosition()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public onTabUnselected(Lcolor/support/design/widget/ColorTabLayout$Tab;)V
    .locals 0

    return-void
.end method

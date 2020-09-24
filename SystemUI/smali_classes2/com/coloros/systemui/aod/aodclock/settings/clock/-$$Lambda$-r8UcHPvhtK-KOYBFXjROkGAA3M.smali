.class public final synthetic Lcom/coloros/systemui/aod/aodclock/settings/clock/-$$Lambda$-r8UcHPvhtK-KOYBFXjROkGAA3M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$OnIndicatorDotClickListener;


# instance fields
.field private final synthetic f$0:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public synthetic constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/-$$Lambda$-r8UcHPvhtK-KOYBFXjROkGAA3M;->f$0:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public final onClick(I)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/-$$Lambda$-r8UcHPvhtK-KOYBFXjROkGAA3M;->f$0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

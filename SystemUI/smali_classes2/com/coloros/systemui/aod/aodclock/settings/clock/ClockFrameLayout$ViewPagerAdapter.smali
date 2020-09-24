.class Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$ViewPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "ClockFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private mFragmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;",
            ">;)V"
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$ViewPagerAdapter;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    .line 274
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 275
    iput-object p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$ViewPagerAdapter;->mFragmentList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$ViewPagerAdapter;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$ViewPagerAdapter;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 282
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$ViewPagerAdapter;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    return-object p0

    .line 284
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No fragment at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class final Lcom/coloros/settings/feature/process/RunningApplicationActivity$a;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "RunningApplicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/process/RunningApplicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/process/RunningApplicationActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/process/RunningApplications;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/process/RunningApplicationActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/process/RunningApplications;",
            ">;)V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity$a;->a:Lcom/coloros/settings/feature/process/RunningApplicationActivity;

    .line 185
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 186
    iput-object p3, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity$a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/process/RunningApplications;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/process/RunningApplications;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplicationActivity$a;->a:Lcom/coloros/settings/feature/process/RunningApplicationActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->a(Lcom/coloros/settings/feature/process/RunningApplicationActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

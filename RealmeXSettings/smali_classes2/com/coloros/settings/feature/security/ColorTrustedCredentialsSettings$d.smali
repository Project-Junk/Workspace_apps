.class final Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$d;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ColorTrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:[Ljava/lang/CharSequence;

.field final synthetic b:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)V
    .locals 3

    .line 362
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$d;->b:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 v0, 0x2

    .line 363
    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$d;->a:[Ljava/lang/CharSequence;

    .line 364
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$d;->a:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121720

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 365
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$d;->a:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f121722

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public final getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$d;->a:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    if-nez p2, :cond_0

    .line 379
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$d;->b:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->d(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$d;->b:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->e(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public final saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final startUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

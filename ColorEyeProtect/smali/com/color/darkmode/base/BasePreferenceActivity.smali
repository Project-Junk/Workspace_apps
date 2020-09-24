.class public abstract Lcom/color/darkmode/base/BasePreferenceActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# instance fields
.field private mFragment:Lcom/color/darkmode/base/BasePreferenceFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFragment()Lcom/color/darkmode/base/BasePreferenceFragment;
.end method

.method public getFragmentId()I
    .locals 0

    const p0, 0x7f0800ab

    return p0
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0b001c

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/color/darkmode/base/BasePreferenceActivity;->getLayoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/color/darkmode/base/BasePreferenceActivity;->setContentView(I)V

    sget-object p1, Lcom/color/darkmode/utils/StatusBarUtils;->INSTANCE:Lcom/color/darkmode/utils/StatusBarUtils;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/color/darkmode/utils/StatusBarUtils;->setStatusBarTransparentAndBlackFont(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/color/darkmode/base/BasePreferenceActivity;->getFragment()Lcom/color/darkmode/base/BasePreferenceFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/color/darkmode/base/BasePreferenceActivity;->mFragment:Lcom/color/darkmode/base/BasePreferenceFragment;

    invoke-virtual {p0}, Lcom/color/darkmode/base/BasePreferenceActivity;->getSupportFragmentManager()Landroidx/fragment/app/i;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/n;

    move-result-object p1

    invoke-virtual {p0}, Lcom/color/darkmode/base/BasePreferenceActivity;->getFragmentId()I

    move-result v0

    iget-object p0, p0, Lcom/color/darkmode/base/BasePreferenceActivity;->mFragment:Lcom/color/darkmode/base/BasePreferenceFragment;

    if-nez p0, :cond_0

    const-string v1, "mFragment"

    invoke-static {v1}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    check-cast p0, Landroidx/fragment/app/d;

    invoke-virtual {p1, v0, p0}, Landroidx/fragment/app/n;->a(ILandroidx/fragment/app/d;)Landroidx/fragment/app/n;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/n;->b()I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/color/darkmode/base/BasePreferenceActivity;->mFragment:Lcom/color/darkmode/base/BasePreferenceFragment;

    if-nez v0, :cond_0

    const-string v1, "mFragment"

    invoke-static {v1}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/color/darkmode/base/BasePreferenceFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

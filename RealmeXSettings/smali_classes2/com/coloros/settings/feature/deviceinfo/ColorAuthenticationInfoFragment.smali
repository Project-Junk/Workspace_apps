.class public Lcom/coloros/settings/feature/deviceinfo/ColorAuthenticationInfoFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorAuthenticationInfoFragment.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ColorAuthenticationInfoFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorAuthenticationInfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 p3, 0x0

    const v0, 0x7f0d0202

    .line 63
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0157

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/ColorAuthenticationInfoFragment;->a:Landroid/widget/TextView;

    const p2, 0x7f0a03fa

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/ColorAuthenticationInfoFragment;->b:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorAuthenticationInfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/ColorAuthenticationInfoFragment;->a:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ro.product.authentication"

    .line 1431
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p3

    const v3, 0x7f120f30

    .line 68
    invoke-virtual {p2, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {p2}, Lcom/coloros/settings/utils/al;->ak(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/ColorAuthenticationInfoFragment;->b:Landroid/widget/TextView;

    const v2, 0x7f120f35

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f120f31

    .line 74
    invoke-virtual {p2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p3

    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object p3, v3, v1

    .line 73
    invoke-virtual {p2, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/ColorAuthenticationInfoFragment;->b:Landroid/widget/TextView;

    const v2, 0x7f120f34

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v3, p3

    invoke-virtual {p2, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const p2, 0x7f0a070a

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcolor/support/v7/widget/Toolbar;

    if-eqz p2, :cond_1

    const p3, 0x7f120f36

    .line 85
    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setTitle(I)V

    .line 86
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorAuthenticationInfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    .line 87
    instance-of v0, p3, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    .line 88
    check-cast p3, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p3, p2}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 89
    invoke-virtual {p3}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    .line 90
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorAuthenticationInfoFragment;->finish()V

    const/4 p1, 0x1

    return p1

    .line 103
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

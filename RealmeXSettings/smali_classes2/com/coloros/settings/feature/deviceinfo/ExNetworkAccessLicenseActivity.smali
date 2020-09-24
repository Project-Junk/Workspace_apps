.class public Lcom/coloros/settings/feature/deviceinfo/ExNetworkAccessLicenseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ExNetworkAccessLicenseActivity.java"


# instance fields
.field private a:Lcom/color/support/widget/ColorListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ExNetworkAccessLicenseActivity;->finish()V

    return-void
.end method

.method public static synthetic lambda$jY_N16jaQuevM5elXyMJ6J5sAE0(Lcom/coloros/settings/feature/deviceinfo/ExNetworkAccessLicenseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/ExNetworkAccessLicenseActivity;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 56
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    const p1, 0x7f0d0173

    .line 58
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/ExNetworkAccessLicenseActivity;->setContentView(I)V

    const p1, 0x7f0a0587

    .line 59
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/ExNetworkAccessLicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 60
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->aj(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 1084
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ExNetworkAccessLicenseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1085
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1090
    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1091
    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    const p1, 0x7f0a070a

    .line 1095
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/ExNetworkAccessLicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcolor/support/v7/widget/Toolbar;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1099
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ExNetworkAccessLicenseActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    .line 1100
    invoke-virtual {p1, v2}, Lcolor/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    const/high16 v2, -0x1000000

    .line 1101
    invoke-virtual {p1, v2}, Lcolor/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 1102
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/ExNetworkAccessLicenseActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 1103
    new-instance v2, Lcom/coloros/settings/feature/deviceinfo/-$$Lambda$ExNetworkAccessLicenseActivity$jY_N16jaQuevM5elXyMJ6J5sAE0;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/deviceinfo/-$$Lambda$ExNetworkAccessLicenseActivity$jY_N16jaQuevM5elXyMJ6J5sAE0;-><init>(Lcom/coloros/settings/feature/deviceinfo/ExNetworkAccessLicenseActivity;)V

    invoke-virtual {p1, v2}, Lcolor/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    invoke-virtual {p1}, Lcolor/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1105
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ag(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1106
    invoke-virtual {p1, v2}, Lcolor/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1107
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ExNetworkAccessLicenseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    .line 1108
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const p1, 0x7f0a0398

    .line 64
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/ExNetworkAccessLicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorListView;

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/ExNetworkAccessLicenseActivity;->a:Lcom/color/support/widget/ColorListView;

    .line 65
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/ExNetworkAccessLicenseActivity;->a:Lcom/color/support/widget/ColorListView;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 66
    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/d;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v2, "image"

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 69
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_1
    new-instance p1, Landroid/widget/SimpleAdapter;

    const v5, 0x7f0d01a9

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [I

    const v2, 0x7f0a0397

    aput v2, v7, v1

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 76
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/ExNetworkAccessLicenseActivity;->a:Lcom/color/support/widget/ColorListView;

    invoke-virtual {v1, p1}, Lcom/color/support/widget/ColorListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ExNetworkAccessLicenseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 79
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 113
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ExNetworkAccessLicenseActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 118
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

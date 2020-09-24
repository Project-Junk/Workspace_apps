.class public Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ColorWizardAbstractPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;->finish()V

    return-void
.end method

.method public static synthetic lambda$mKtBPqTWMgxoDlPyyJXPhEUBRZo(Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected b()I
    .locals 1

    const v0, 0x7f1201d1

    return v0
.end method

.method protected c()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 126
    new-instance v0, Landroidx/fragment/app/Fragment;

    invoke-direct {v0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a05ed

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;->a()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 50
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d010d

    .line 51
    invoke-virtual {p0, p1}, Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;->setContentView(I)V

    .line 1063
    invoke-virtual {p0}, Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 1065
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const/high16 v1, -0x80000000

    .line 1066
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1067
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1069
    invoke-virtual {p0}, Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1071
    invoke-virtual {p0}, Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 1072
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit16 p1, p1, 0x2000

    .line 1071
    invoke-virtual {v1, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    const p1, 0x7f0a070a

    .line 1074
    invoke-virtual {p0, p1}, Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcolor/support/v7/widget/Toolbar;

    if-eqz p1, :cond_1

    .line 1076
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Lcolor/support/v7/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1077
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ag(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v0, v1, v0, v0}, Lcolor/support/v7/widget/Toolbar;->setPadding(IIII)V

    .line 1078
    invoke-virtual {p0, p1}, Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 1079
    new-instance v0, Lcom/coloros/settings/wizard/-$$Lambda$ColorWizardAbstractPicker$mKtBPqTWMgxoDlPyyJXPhEUBRZo;

    invoke-direct {v0, p0}, Lcom/coloros/settings/wizard/-$$Lambda$ColorWizardAbstractPicker$mKtBPqTWMgxoDlPyyJXPhEUBRZo;-><init>(Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;)V

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1083
    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    const p1, 0x7f0a05ed

    .line 53
    invoke-virtual {p0, p1}, Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;->a:Landroid/widget/TextView;

    .line 54
    iget-object p1, p0, Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a055b

    .line 55
    invoke-virtual {p0, p1}, Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0a02c4

    invoke-virtual {p0}, Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;->c()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 94
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 101
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

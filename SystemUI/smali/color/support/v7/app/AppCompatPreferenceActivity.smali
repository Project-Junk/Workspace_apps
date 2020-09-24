.class public abstract Lcolor/support/v7/app/AppCompatPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "AppCompatPreferenceActivity.java"


# instance fields
.field private mDelegate:Landroidx/appcompat/app/AppCompatDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getDelegate()Landroidx/appcompat/app/AppCompatDelegate;
    .locals 1

    .line 145
    iget-object v0, p0, Lcolor/support/v7/app/AppCompatPreferenceActivity;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 146
    invoke-static {p0, v0}, Landroidx/appcompat/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroidx/appcompat/app/AppCompatCallback;)Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lcolor/support/v7/app/AppCompatPreferenceActivity;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    .line 148
    :cond_0
    iget-object p0, p0, Lcolor/support/v7/app/AppCompatPreferenceActivity;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public getSupportActionBar()Landroidx/appcompat/app/ActionBar;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegate;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    return-object p0
.end method

.method public invalidateOptionsMenu()V
    .locals 0

    .line 137
    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegate;->invalidateOptionsMenu()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 118
    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->installViewFactory()V

    .line 60
    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 129
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 130
    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegate;->onDestroy()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .line 105
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPostResume()V

    .line 106
    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegate;->onPostResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 123
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 124
    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegate;->onStop()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 112
    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 85
    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSupportActionBar(Lcolor/support/v7/widget/Toolbar;)V
    .locals 0
    .param p1    # Lcolor/support/v7/widget/Toolbar;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

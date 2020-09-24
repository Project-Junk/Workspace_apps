.class public abstract Lcolor/support/v7/app/AppCompatPreferenceActivity;
.super Landroid/preference/PreferenceActivity;


# instance fields
.field private a:Landroidx/appcompat/app/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/app/e;
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/app/AppCompatPreferenceActivity;->a:Landroidx/appcompat/app/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/appcompat/app/e;->a(Landroid/app/Activity;Landroidx/appcompat/app/d;)Landroidx/appcompat/app/e;

    move-result-object v0

    iput-object v0, p0, Lcolor/support/v7/app/AppCompatPreferenceActivity;->a:Landroidx/appcompat/app/e;

    :cond_0
    iget-object p0, p0, Lcolor/support/v7/app/AppCompatPreferenceActivity;->a:Landroidx/appcompat/app/e;

    return-object p0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->a()Landroidx/appcompat/app/e;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/e;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 0

    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->a()Landroidx/appcompat/app/e;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/e;->b()Landroid/view/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public invalidateOptionsMenu()V
    .locals 0

    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->a()Landroidx/appcompat/app/e;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/e;->f()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->a()Landroidx/appcompat/app/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->a()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->i()V

    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->a()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->a(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->a()Landroidx/appcompat/app/e;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/e;->g()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->a()Landroidx/appcompat/app/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPostResume()V

    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->a()Landroidx/appcompat/app/e;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/e;->e()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->a()Landroidx/appcompat/app/e;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/e;->d()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->a()Landroidx/appcompat/app/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->a()Landroidx/appcompat/app/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->c(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->a()Landroidx/appcompat/app/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->a(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Lcolor/support/v7/app/AppCompatPreferenceActivity;->a()Landroidx/appcompat/app/e;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/e;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.class public final Landroidx/preference/PreferenceScreen;
.super Landroidx/preference/PreferenceGroup;


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget v0, Landroidx/preference/m$a;->preferenceScreenStyle:I

    const v1, 0x101008b

    invoke-static {p1, v0, v1}, Landroidx/core/content/a/g;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/PreferenceScreen;->b:Z

    return-void
.end method


# virtual methods
.method protected c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/preference/PreferenceScreen;->b:Z

    return p0
.end method

.method protected onClick()V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->b()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getPreferenceManager()Landroidx/preference/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/j;->i()Landroidx/preference/j$b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroidx/preference/j$b;->onNavigateToScreen(Landroidx/preference/PreferenceScreen;)V

    :cond_1
    :goto_0
    return-void
.end method

.class public Lcom/color/support/preference/d;
.super Landroidx/preference/d;
.source "ColorMultiSelectListPreferenceDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/preference/d;-><init>()V

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/color/support/preference/d;
    .locals 3

    .line 33
    new-instance v0, Lcom/color/support/preference/d;

    invoke-direct {v0}, Lcom/color/support/preference/d;-><init>()V

    .line 34
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 35
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v1}, Lcom/color/support/preference/d;->g(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/color/support/preference/d;->o()Landroidx/fragment/app/c;

    move-result-object p1

    .line 44
    new-instance v0, Lcolor/support/v7/app/b$a;

    invoke-direct {v0, p1}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Lcom/color/support/preference/d;->an()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->c(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/color/support/preference/d;->an()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->b(Landroid/graphics/drawable/Drawable;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/color/support/preference/d;->an()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->d()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcolor/support/v7/app/b$a;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/color/support/preference/d;->an()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->e()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcolor/support/v7/app/b$a;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    .line 50
    invoke-virtual {p0, p1}, Lcom/color/support/preference/d;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/color/support/preference/d;->b(Landroid/view/View;)V

    .line 53
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/b$a;->d(Landroid/view/View;)Lcolor/support/v7/app/b$a;

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/preference/d;->an()Landroidx/preference/DialogPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->b()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcolor/support/v7/app/b$a;->d(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;

    .line 57
    :goto_0
    invoke-virtual {p0, v0}, Lcom/color/support/preference/d;->a(Landroidx/appcompat/app/b$a;)V

    .line 58
    invoke-virtual {v0}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object p1

    return-object p1
.end method

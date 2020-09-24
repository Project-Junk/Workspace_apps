.class public Lcom/color/support/preference/b;
.super Landroidx/preference/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/a;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/color/support/preference/b;
    .locals 3

    new-instance v0, Lcom/color/support/preference/b;

    invoke-direct {v0}, Lcom/color/support/preference/b;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/color/support/preference/b;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-virtual {p0}, Lcom/color/support/preference/b;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcolor/support/v7/app/b$a;

    invoke-direct {v0, p1}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/color/support/preference/b;->c()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->c(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/color/support/preference/b;->c()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->b(Landroid/graphics/drawable/Drawable;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/color/support/preference/b;->c()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->d()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcolor/support/v7/app/b$a;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/color/support/preference/b;->c()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->e()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcolor/support/v7/app/b$a;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/color/support/preference/b;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/color/support/preference/b;->a(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Lcolor/support/v7/app/b$a;->d(Landroid/view/View;)Lcolor/support/v7/app/b$a;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/preference/b;->c()Landroidx/preference/DialogPreference;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/DialogPreference;->b()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcolor/support/v7/app/b$a;->d(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;

    :goto_0
    invoke-virtual {v0}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object p0

    invoke-virtual {p0}, Lcolor/support/v7/app/b;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p0
.end method

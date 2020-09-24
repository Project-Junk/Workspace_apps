.class public Lcom/android/settings/wifi/WifiDialog;
.super Lcolor/support/v7/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/wifi/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiDialog$a;
    }
.end annotation


# instance fields
.field public a:Lcom/android/settings/wifi/c;

.field private final b:I

.field private final c:Lcom/android/settings/wifi/WifiDialog$a;

.field private final d:Lcom/android/settingslib/wifi/a;

.field private e:Landroid/view/View;

.field private f:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$a;Lcom/android/settingslib/wifi/a;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcolor/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 84
    iput p4, p0, Lcom/android/settings/wifi/WifiDialog;->b:I

    .line 85
    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->c:Lcom/android/settings/wifi/WifiDialog$a;

    .line 86
    iput-object p3, p0, Lcom/android/settings/wifi/WifiDialog;->d:Lcom/android/settingslib/wifi/a;

    .line 87
    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiDialog;->f:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$a;Lcom/android/settingslib/wifi/a;I)Lcom/android/settings/wifi/WifiDialog;
    .locals 7

    .line 67
    new-instance v6, Lcom/android/settings/wifi/WifiDialog;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$a;Lcom/android/settingslib/wifi/a;IZ)V

    return-object v6
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 118
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->c:Lcom/android/settings/wifi/WifiDialog$a;

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->d:Lcom/android/settingslib/wifi/a;

    if-nez p1, :cond_1

    const p1, 0x7f0a0640

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 125
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3095
    :cond_1
    iget-object p1, p1, Lcom/android/settingslib/wifi/a;->d:Ljava/lang/String;

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->c:Lcom/android/settings/wifi/WifiDialog$a;

    invoke-interface {v0, p1}, Lcom/android/settings/wifi/WifiDialog$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$OqM2ILeoPsilhwPefnp8dzn-_zg(Lcom/android/settings/wifi/WifiDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiDialog;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->c:Lcom/android/settings/wifi/WifiDialog$a;

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0, p0}, Lcom/android/settings/wifi/WifiDialog$a;->onSubmit(Lcom/android/settings/wifi/WifiDialog;)V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x1

    .line 198
    invoke-virtual {p0, v0, p1, p0}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final b()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x1

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x2

    .line 208
    invoke-virtual {p0, v0, p1, p0}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final c()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x3

    .line 203
    invoke-virtual {p0, v0, p1, p0}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->c:Lcom/android/settings/wifi/WifiDialog$a;

    if-eqz p1, :cond_3

    const/4 v0, -0x3

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    invoke-interface {p1, p0}, Lcom/android/settings/wifi/WifiDialog$a;->onSubmit(Lcom/android/settings/wifi/WifiDialog;)V

    return-void

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->d:Lcom/android/settingslib/wifi/a;

    .line 2764
    iget-object p2, p2, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 165
    invoke-static {p1, p2}, Lcom/android/settings/wifi/i;->a(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settingslib/h;->d(Landroid/content/Context;)Lcom/android/settingslib/g$a;

    move-result-object p2

    .line 166
    invoke-static {p1, p2}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    return-void

    .line 170
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->c:Lcom/android/settings/wifi/WifiDialog$a;

    invoke-interface {p1}, Lcom/android/settings/wifi/WifiDialog$a;->p_()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d03a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->e:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 99
    new-instance v0, Lcom/android/settings/wifi/c;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->d:Lcom/android/settingslib/wifi/a;

    iget v3, p0, Lcom/android/settings/wifi/WifiDialog;->b:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/wifi/c;-><init>(Lcom/android/settings/wifi/d;Landroid/view/View;Lcom/android/settingslib/wifi/a;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->a:Lcom/android/settings/wifi/c;

    .line 100
    invoke-super {p0, p1}, Lcolor/support/v7/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 102
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiDialog;->f:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->a:Lcom/android/settings/wifi/c;

    .line 1500
    iget-object p1, p1, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    invoke-interface {p1}, Lcom/android/settings/wifi/d;->b()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1503
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->a:Lcom/android/settings/wifi/c;

    invoke-virtual {p1}, Lcom/android/settings/wifi/c;->a()V

    .line 110
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->d:Lcom/android/settingslib/wifi/a;

    if-nez p1, :cond_2

    .line 111
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->a:Lcom/android/settings/wifi/c;

    .line 2493
    iget-object p1, p1, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    invoke-interface {p1}, Lcom/android/settings/wifi/d;->c()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2496
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 145
    invoke-super {p0, p1}, Lcolor/support/v7/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 146
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->a:Lcom/android/settings/wifi/c;

    invoke-virtual {p1}, Lcom/android/settings/wifi/c;->c()V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 117
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiDialog$OqM2ILeoPsilhwPefnp8dzn-_zg;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiDialog$OqM2ILeoPsilhwPefnp8dzn-_zg;-><init>(Lcom/android/settings/wifi/WifiDialog;)V

    const v1, 0x7f0a0641

    .line 132
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 133
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a04bf

    .line 135
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 136
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->f:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 139
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 140
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

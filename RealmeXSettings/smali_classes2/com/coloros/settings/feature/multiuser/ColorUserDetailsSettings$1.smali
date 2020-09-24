.class final Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings$1;
.super Ljava/lang/Object;
.source "ColorUserDetailsSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentActivity;

.field final synthetic b:Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings$1;->b:Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;

    iput-object p2, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings$1;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x32

    if-lt v0, v2, :cond_1

    .line 199
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings$1;->a:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings$1;->b:Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;

    const v3, 0x7f12183c

    invoke-virtual {v2, v3}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    move p1, v1

    .line 204
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings$1;->b:Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->a(Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings$1;->b:Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->a(Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

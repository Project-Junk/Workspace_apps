.class public final Lcom/coloros/settings/utils/bl;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static a:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/bl;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "SystemUiDelegate"

    const-string p1, "show toast context is null"

    .line 27
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 30
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bl;->a:Landroid/widget/Toast;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 31
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/coloros/settings/utils/bl;->a:Landroid/widget/Toast;

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :goto_0
    sget-object p0, Lcom/coloros/settings/utils/bl;->a:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

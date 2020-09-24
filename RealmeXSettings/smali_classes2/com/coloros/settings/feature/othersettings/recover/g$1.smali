.class final Lcom/coloros/settings/feature/othersettings/recover/g$1;
.super Ljava/lang/Object;
.source "ResetHelper.java"

# interfaces
.implements Lcom/coloros/c/a/a/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/recover/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/recover/j;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/coloros/settings/feature/othersettings/recover/g;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/recover/g;Lcom/coloros/settings/feature/othersettings/recover/j;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/g$1;->d:Lcom/coloros/settings/feature/othersettings/recover/g;

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/recover/g$1;->a:Lcom/coloros/settings/feature/othersettings/recover/j;

    iput-object p3, p0, Lcom/coloros/settings/feature/othersettings/recover/g$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/coloros/settings/feature/othersettings/recover/g$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "ResetHelper"

    const-string v1, "onVerifySuccess: start process"

    .line 191
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/g$1;->a:Lcom/coloros/settings/feature/othersettings/recover/j;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/g$1;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/coloros/settings/feature/othersettings/recover/j;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVerifyFail: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResetHelper"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VERIFY_RESULT_CODE_CANCEL"

    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/g$1;->c:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    const-string v0, "ResetHelper"

    const-string v1, "onVerifyCancel"

    .line 207
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 3

    const-string v0, "ResetHelper"

    const-string v1, "onTokenInvalid"

    .line 212
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/g$1;->c:Landroid/content/Context;

    const v1, 0x7f120fc9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

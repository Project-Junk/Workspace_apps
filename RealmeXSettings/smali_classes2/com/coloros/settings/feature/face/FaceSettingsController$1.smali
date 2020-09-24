.class final Lcom/coloros/settings/feature/face/FaceSettingsController$1;
.super Ljava/lang/Object;
.source "FaceSettingsController.java"

# interfaces
.implements Lcom/color/support/widget/ColorClickableSpan$SpannableStrClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/face/FaceSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/face/FaceSettingsController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/face/FaceSettingsController;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController$1;->a:Lcom/coloros/settings/feature/face/FaceSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 3

    .line 178
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController$1;->a:Lcom/coloros/settings/feature/face/FaceSettingsController;

    invoke-static {v1}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a(Lcom/coloros/settings/feature/face/FaceSettingsController;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/coloros/settings/feature/password/StatementPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title_res_id"

    const v2, 0x7f12097b

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "statement_type"

    const/4 v2, 0x2

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController$1;->a:Lcom/coloros/settings/feature/face/FaceSettingsController;

    invoke-static {v1}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a(Lcom/coloros/settings/feature/face/FaceSettingsController;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "FaceSettingsController"

    const-string v1, "onClick ActivityNotFoundException action:com.coloros.bootreg.activity.statementpage"

    .line 184
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

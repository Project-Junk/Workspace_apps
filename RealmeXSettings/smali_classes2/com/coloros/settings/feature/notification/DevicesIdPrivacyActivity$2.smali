.class final Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity$2;
.super Ljava/lang/Object;
.source "DevicesIdPrivacyActivity.java"

# interfaces
.implements Lcom/color/support/widget/ColorClickableSpan$SpannableStrClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity$2;->a:Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 3

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.coloros.bootreg.activity.statementpage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "statement_intent_flag"

    const/4 v2, 0x2

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity$2;->a:Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 171
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/az;->b(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity$2;->a:Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "DevicesIdPrivacyActivity"

    const-string v1, "onClick ActivityNotFoundException action:com.coloros.bootreg.activity.statementpage"

    .line 175
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

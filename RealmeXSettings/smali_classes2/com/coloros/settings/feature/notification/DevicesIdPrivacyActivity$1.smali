.class final Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity$1;
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

    .line 136
    iput-object p1, p0, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity$1;->a:Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 5

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {}, Lcom/coloros/settings/utils/al;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "https://muc.heytap.com/document/heytap/oversea/privacyPolicy/privacyPolicy_"

    goto :goto_0

    :cond_0
    const-string v3, "https://muc.heytap.com/document/heytap/privacyPolicy/privacyPolicy_"

    .line 145
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "DevicesIdPrivacyActivity"

    const-string v1, "link url is empty, IS_EXUE = false"

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 149
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".html"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity$1;->a:Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/notification/DevicesIdPrivacyActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

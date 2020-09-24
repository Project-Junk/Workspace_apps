.class final Lcom/android/settings/datausage/DataUsageSummary$a;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/dashboard/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/android/settings/dashboard/f;

.field private final c:Lcom/android/settingslib/net/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$a;->a:Landroid/app/Activity;

    .line 281
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummary$a;->b:Lcom/android/settings/dashboard/f;

    .line 282
    new-instance p2, Lcom/android/settingslib/net/a;

    invoke-direct {p2, p1}, Lcom/android/settingslib/net/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummary$a;->c:Lcom/android/settingslib/net/a;

    return-void
.end method

.method private a()Ljava/lang/CharSequence;
    .locals 5

    .line 331
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$a;->c:Lcom/android/settingslib/net/a;

    invoke-virtual {v0}, Lcom/android/settingslib/net/a;->b()Lcom/android/settingslib/net/a$a;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$a;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 334
    :cond_0
    iget-wide v3, v0, Lcom/android/settingslib/net/a$a;->d:J

    cmp-long v1, v3, v1

    if-gtz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$a;->a:Landroid/app/Activity;

    iget-wide v2, v0, Lcom/android/settingslib/net/a$a;->f:J

    invoke-static {v1, v2, v3}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 337
    :cond_1
    iget-wide v1, v0, Lcom/android/settingslib/net/a$a;->f:J

    iget-wide v3, v0, Lcom/android/settingslib/net/a$a;->d:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/m;->a(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 9

    if-eqz p1, :cond_5

    .line 288
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$a;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settings/datausage/f;->d(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 289
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$a;->b:Lcom/android/settings/dashboard/f;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary$a;->a:Landroid/app/Activity;

    const v3, 0x7f1206fa

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "telephony_subscription_service"

    .line 1312
    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionManager;

    .line 1313
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 1315
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary$a;->a()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 1318
    :cond_0
    invoke-static {v4, v5}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getPrimaryPlan(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionPlan;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1320
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary$a;->a()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 1322
    :cond_1
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->unlimited(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1323
    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary$a;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 1325
    :cond_2
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v5

    .line 1326
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v7

    .line 1325
    invoke-static {v5, v6, v7, v8}, Lcom/android/settings/m;->a(JJ)Ljava/lang/String;

    move-result-object v4

    :goto_0
    aput-object v4, v1, v0

    .line 290
    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/f;->a(Lcom/android/settings/dashboard/f$b;Ljava/lang/CharSequence;)V

    return-void

    .line 293
    :cond_3
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$a;->c:Lcom/android/settingslib/net/a;

    .line 2121
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 2122
    invoke-virtual {p1, v2}, Lcom/android/settingslib/net/a;->a(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/a$a;

    move-result-object p1

    if-nez p1, :cond_4

    .line 297
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$a;->b:Lcom/android/settings/dashboard/f;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/f;->a(Lcom/android/settings/dashboard/f$b;Ljava/lang/CharSequence;)V

    return-void

    .line 299
    :cond_4
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary$a;->a:Landroid/app/Activity;

    const v3, 0x7f12070a

    .line 300
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 301
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$a;->a:Landroid/app/Activity;

    iget-wide v4, p1, Lcom/android/settingslib/net/a$a;->f:J

    .line 302
    invoke-static {v3, v4, v5}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    .line 303
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$a;->b:Lcom/android/settings/dashboard/f;

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object p1, v1, v0

    .line 304
    invoke-static {v2, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 303
    invoke-virtual {v3, p0, p1}, Lcom/android/settings/dashboard/f;->a(Lcom/android/settings/dashboard/f$b;Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

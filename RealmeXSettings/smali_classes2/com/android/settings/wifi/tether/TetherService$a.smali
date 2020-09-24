.class public final Lcom/android/settings/wifi/tether/TetherService$a;
.super Ljava/lang/Object;
.source "TetherService.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/app/usage/UsageStatsManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "usagestats"

    .line 426
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$a;->a:Landroid/app/usage/UsageStatsManager;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$a;->a:Landroid/app/usage/UsageStatsManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/usage/UsageStatsManager;->setAppInactive(Ljava/lang/String;Z)V

    return-void
.end method

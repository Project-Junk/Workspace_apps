.class final Lcom/android/settings/wifi/WifiSettings$5;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createSummaryProvider(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;
    .locals 1

    .line 1262
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$a;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/wifi/WifiSettings$a;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/f;)V

    return-object v0
.end method

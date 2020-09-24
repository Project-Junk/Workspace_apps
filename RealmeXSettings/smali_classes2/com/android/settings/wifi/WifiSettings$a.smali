.class final Lcom/android/settings/wifi/WifiSettings$a;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/f$b;
.implements Lcom/android/settings/widget/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/android/settings/wifi/h;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lcom/android/settings/dashboard/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/f;)V
    .locals 0

    .line 1239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1240
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$a;->b:Landroid/content/Context;

    .line 1241
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings$a;->c:Lcom/android/settings/dashboard/f;

    .line 1242
    new-instance p1, Lcom/android/settings/wifi/h;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings$a;->b:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/wifi/h;-><init>(Landroid/content/Context;Lcom/android/settings/widget/e$a;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$a;->a:Lcom/android/settings/wifi/h;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1248
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$a;->a:Lcom/android/settings/wifi/h;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/h;->a(Z)V

    return-void
.end method

.method public final onSummaryChanged(Ljava/lang/String;)V
    .locals 1

    .line 1253
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$a;->c:Lcom/android/settings/dashboard/f;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/f;->a(Lcom/android/settings/dashboard/f$b;Ljava/lang/CharSequence;)V

    return-void
.end method

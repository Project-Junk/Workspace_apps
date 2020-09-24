.class final Lcom/android/settings/core/instrumentation/b$a;
.super Landroid/os/Handler;
.source "SettingsIntelligenceLogWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/core/instrumentation/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/core/instrumentation/b;


# direct methods
.method public constructor <init>(Lcom/android/settings/core/instrumentation/b;Landroid/os/Looper;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/settings/core/instrumentation/b$a;->a:Lcom/android/settings/core/instrumentation/b;

    .line 163
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/b$a;->a:Lcom/android/settings/core/instrumentation/b;

    .line 1046
    iget-object v0, v0, Lcom/android/settings/core/instrumentation/b;->a:Ljava/lang/Runnable;

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/settings/core/instrumentation/b$a;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/b$a;->a:Lcom/android/settings/core/instrumentation/b;

    .line 2046
    iget-object v0, v0, Lcom/android/settings/core/instrumentation/b;->a:Ljava/lang/Runnable;

    const-wide/32 v1, 0xea60

    .line 168
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/core/instrumentation/b$a;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

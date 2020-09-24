.class final Lcom/android/settings/applications/g$1;
.super Ljava/lang/Object;
.source "AppStateNotificationBridge.java"

# interfaces
.implements Lcom/coloros/settingslib/applications/ApplicationsState$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z
    .locals 5

    .line 251
    invoke-static {p1}, Lcom/android/settings/applications/g;->d(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Lcom/android/settings/applications/g$a;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 253
    iget-wide v1, p1, Lcom/android/settings/applications/g$a;->c:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

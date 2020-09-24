.class final Lcom/android/settings/applications/h$1;
.super Ljava/lang/Object;
.source "AppStateOverlayBridge.java"

# interfaces
.implements Lcom/coloros/settingslib/applications/ApplicationsState$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z
    .locals 0

    .line 93
    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

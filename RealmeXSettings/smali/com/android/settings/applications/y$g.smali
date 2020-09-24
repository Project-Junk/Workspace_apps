.class public final Lcom/android/settings/applications/y$g;
.super Lcom/android/settings/applications/y$c;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field n:Landroid/app/ActivityManager$RunningServiceInfo;

.field public o:Landroid/content/pm/ServiceInfo;

.field p:Z

.field q:Lcom/android/settings/applications/y$d;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 380
    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/y$c;-><init>(ZI)V

    return-void
.end method

.class public final Lcom/android/settings/datausage/a$a;
.super Ljava/lang/Object;
.source "AppStateDataUsageBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean p1, p0, Lcom/android/settings/datausage/a$a;->a:Z

    .line 57
    iput-boolean p2, p0, Lcom/android/settings/datausage/a$a;->b:Z

    return-void
.end method

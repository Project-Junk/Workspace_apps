.class final Lcom/android/settings/applications/y$a;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field b:Z

.field c:Z


# direct methods
.method constructor <init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/android/settings/applications/y$a;->a:Landroid/app/ActivityManager$RunningAppProcessInfo;

    return-void
.end method

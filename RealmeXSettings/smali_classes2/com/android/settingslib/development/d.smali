.class public final Lcom/android/settingslib/development/d;
.super Ljava/lang/Object;
.source "SystemPropPoker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/development/d$a;
    }
.end annotation


# static fields
.field private static final b:Lcom/android/settingslib/development/d;


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/android/settingslib/development/d;

    invoke-direct {v0}, Lcom/android/settingslib/development/d;-><init>()V

    sput-object v0, Lcom/android/settingslib/development/d;->b:Lcom/android/settingslib/development/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/settingslib/development/d;->a:Z

    return-void
.end method

.method public static a()Lcom/android/settingslib/development/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 40
    sget-object v0, Lcom/android/settingslib/development/d;->b:Lcom/android/settingslib/development/d;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 52
    iget-boolean v0, p0, Lcom/android/settingslib/development/d;->a:Z

    if-nez v0, :cond_0

    .line 1059
    new-instance v0, Lcom/android/settingslib/development/d$a;

    invoke-direct {v0}, Lcom/android/settingslib/development/d$a;-><init>()V

    const/4 v1, 0x0

    .line 53
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/development/d$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

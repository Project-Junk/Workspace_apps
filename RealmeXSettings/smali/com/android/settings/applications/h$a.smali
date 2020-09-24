.class public final Lcom/android/settings/applications/h$a;
.super Lcom/android/settings/applications/d$a;
.source "AppStateOverlayBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    sput-object v0, Lcom/android/settings/applications/h$a;->h:Ljava/util/List;

    const-string v1, "com.android.systemui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/d$a;)V
    .locals 2

    .line 77
    iget-object v0, p1, Lcom/android/settings/applications/d$a;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/applications/d$a;->b:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/d$a;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 78
    iget-object v0, p1, Lcom/android/settings/applications/d$a;->c:Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/android/settings/applications/h$a;->c:Landroid/content/pm/PackageInfo;

    .line 79
    iget v0, p1, Lcom/android/settings/applications/d$a;->f:I

    iput v0, p0, Lcom/android/settings/applications/h$a;->f:I

    .line 80
    iget-boolean v0, p1, Lcom/android/settings/applications/d$a;->e:Z

    iput-boolean v0, p0, Lcom/android/settings/applications/h$a;->e:Z

    .line 81
    iget-boolean v0, p1, Lcom/android/settings/applications/d$a;->d:Z

    iput-boolean v0, p0, Lcom/android/settings/applications/h$a;->d:Z

    .line 82
    sget-object v0, Lcom/android/settings/applications/h$a;->h:Ljava/util/List;

    iget-object p1, p1, Lcom/android/settings/applications/d$a;->a:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/applications/h$a;->g:Z

    return-void
.end method

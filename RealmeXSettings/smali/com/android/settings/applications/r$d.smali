.class final Lcom/android/settings/applications/r$d;
.super Lcom/android/settings/applications/u;
.source "ApplicationFeatureProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private c:Lcom/android/settings/applications/q$a;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;Landroid/os/UserManager;Lcom/android/settings/applications/q$a;)V
    .locals 0

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/u;-><init>(Landroid/content/pm/PackageManager;Landroid/os/UserManager;)V

    .line 208
    iput-object p3, p0, Lcom/android/settings/applications/r$d;->c:Lcom/android/settings/applications/q$a;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/z;",
            ">;)V"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/android/settings/applications/r$d;->c:Lcom/android/settings/applications/q$a;

    invoke-interface {v0, p1}, Lcom/android/settings/applications/q$a;->a(Ljava/util/List;)V

    return-void
.end method

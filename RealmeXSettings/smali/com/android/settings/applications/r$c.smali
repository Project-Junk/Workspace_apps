.class final Lcom/android/settings/applications/r$c;
.super Lcom/android/settings/applications/p;
.source "ApplicationFeatureProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private c:Lcom/android/settings/applications/q$a;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Lcom/android/settings/applications/q$a;)V
    .locals 0

    .line 225
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/applications/p;-><init>([Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;)V

    .line 227
    iput-object p6, p0, Lcom/android/settings/applications/r$c;->c:Lcom/android/settings/applications/q$a;

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

    .line 232
    iget-object v0, p0, Lcom/android/settings/applications/r$c;->c:Lcom/android/settings/applications/q$a;

    invoke-interface {v0, p1}, Lcom/android/settings/applications/q$a;->a(Ljava/util/List;)V

    return-void
.end method

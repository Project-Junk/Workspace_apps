.class public final Lcom/android/settings/applications/appops/a$a;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/android/settings/applications/appops/a;

.field final b:Landroid/content/pm/ApplicationInfo;

.field final c:Ljava/io/File;

.field final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/String;

.field f:Landroid/graphics/drawable/Drawable;

.field g:Z

.field private final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/appops/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/appops/a;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appops/a$a;->d:Landroid/util/SparseArray;

    .line 228
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appops/a$a;->h:Landroid/util/SparseArray;

    .line 235
    iput-object p1, p0, Lcom/android/settings/applications/appops/a$a;->a:Lcom/android/settings/applications/appops/a;

    .line 236
    iput-object p2, p0, Lcom/android/settings/applications/appops/a$a;->b:Landroid/content/pm/ApplicationInfo;

    .line 237
    new-instance p1, Ljava/io/File;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/applications/appops/a$a;->c:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/android/settings/applications/appops/a$b;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/settings/applications/appops/a$a;->h:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appops/a$b;

    return-object p1
.end method

.method public final a(Lcom/android/settings/applications/appops/a$b;Landroid/app/AppOpsManager$OpEntry;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/settings/applications/appops/a$a;->d:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/applications/appops/a$a;->h:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result p2

    invoke-static {p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p2

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/android/settings/applications/appops/a$a;->e:Ljava/lang/String;

    return-object v0
.end method

.class public final Lcom/android/settings/applications/appops/a$b;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/android/settings/applications/appops/a$a;

.field final c:I

.field d:I

.field private final e:Landroid/app/AppOpsManager$PackageOps;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/settings/applications/appops/a$a;)V
    .locals 1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appops/a$b;->a:Ljava/util/ArrayList;

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appops/a$b;->f:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 314
    iput v0, p0, Lcom/android/settings/applications/appops/a$b;->d:I

    .line 318
    iput-object p1, p0, Lcom/android/settings/applications/appops/a$b;->e:Landroid/app/AppOpsManager$PackageOps;

    .line 319
    iput-object p3, p0, Lcom/android/settings/applications/appops/a$b;->b:Lcom/android/settings/applications/appops/a$a;

    const/4 p1, 0x0

    .line 320
    iput p1, p0, Lcom/android/settings/applications/appops/a$b;->c:I

    .line 321
    iget-object p1, p0, Lcom/android/settings/applications/appops/a$b;->b:Lcom/android/settings/applications/appops/a$a;

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/applications/appops/a$a;->a(Lcom/android/settings/applications/appops/a$b;Landroid/app/AppOpsManager$OpEntry;)V

    .line 322
    iget-object p1, p0, Lcom/android/settings/applications/appops/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object p1, p0, Lcom/android/settings/applications/appops/a$b;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;",
            "Landroid/app/AppOpsManager$OpEntry;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 327
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 328
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    .line 329
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v2

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 330
    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    .line 336
    :cond_0
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 337
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/AppOpsManager$OpEntry;)V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/android/settings/applications/appops/a$b;->b:Lcom/android/settings/applications/appops/a$a;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/applications/appops/a$a;->a(Lcom/android/settings/applications/appops/a$b;Landroid/app/AppOpsManager$OpEntry;)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/applications/appops/a$b;->a:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/settings/applications/appops/a$b;->a(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V

    .line 347
    iget-object v0, p0, Lcom/android/settings/applications/appops/a$b;->b:Lcom/android/settings/applications/appops/a$a;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/appops/a$a;->a(I)Lcom/android/settings/applications/appops/a$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/settings/applications/appops/a$b;->f:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/settings/applications/appops/a$b;->a(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/settings/applications/appops/a$b;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v0

    return v0
.end method

.method public final b()J
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/android/settings/applications/appops/a$b;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/android/settings/applications/appops/a$b;->b:Lcom/android/settings/applications/appops/a$a;

    .line 1258
    iget-object v0, v0, Lcom/android/settings/applications/appops/a$a;->e:Ljava/lang/String;

    return-object v0
.end method

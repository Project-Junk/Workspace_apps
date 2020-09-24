.class public final Lcom/android/settings/applications/appops/a;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appops/a$b;,
        Lcom/android/settings/applications/appops/a$a;,
        Lcom/android/settings/applications/appops/a$c;
    }
.end annotation


# static fields
.field public static final f:Lcom/android/settings/applications/appops/a$c;

.field public static final g:Lcom/android/settings/applications/appops/a$c;

.field public static final h:Lcom/android/settings/applications/appops/a$c;

.field public static final i:Lcom/android/settings/applications/appops/a$c;

.field public static final j:Lcom/android/settings/applications/appops/a$c;

.field public static final k:Lcom/android/settings/applications/appops/a$c;

.field public static final l:[Lcom/android/settings/applications/appops/a$c;

.field public static final m:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/appops/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/appops/a$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/app/AppOpsManager;

.field final c:Landroid/content/pm/PackageManager;

.field final d:[Ljava/lang/CharSequence;

.field final e:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 97
    new-instance v0, Lcom/android/settings/applications/appops/a$c;

    const/4 v1, 0x7

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    new-array v1, v1, [Z

    fill-array-data v1, :array_1

    invoke-direct {v0, v2, v1}, Lcom/android/settings/applications/appops/a$c;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/a;->f:Lcom/android/settings/applications/appops/a$c;

    .line 114
    new-instance v0, Lcom/android/settings/applications/appops/a$c;

    const/16 v1, 0x8

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    new-array v1, v1, [Z

    fill-array-data v1, :array_3

    invoke-direct {v0, v2, v1}, Lcom/android/settings/applications/appops/a$c;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/a;->g:Lcom/android/settings/applications/appops/a$c;

    .line 133
    new-instance v0, Lcom/android/settings/applications/appops/a$c;

    const/16 v1, 0x9

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    new-array v1, v1, [Z

    fill-array-data v1, :array_5

    invoke-direct {v0, v2, v1}, Lcom/android/settings/applications/appops/a$c;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/a;->h:Lcom/android/settings/applications/appops/a$c;

    .line 154
    new-instance v0, Lcom/android/settings/applications/appops/a$c;

    const/16 v1, 0xf

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    const/16 v2, 0xe

    new-array v2, v2, [Z

    fill-array-data v2, :array_7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/appops/a$c;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/a;->i:Lcom/android/settings/applications/appops/a$c;

    .line 186
    new-instance v0, Lcom/android/settings/applications/appops/a$c;

    const/16 v1, 0xa

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    new-array v1, v1, [Z

    fill-array-data v1, :array_9

    invoke-direct {v0, v2, v1}, Lcom/android/settings/applications/appops/a$c;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/a;->j:Lcom/android/settings/applications/appops/a$c;

    .line 209
    new-instance v0, Lcom/android/settings/applications/appops/a$c;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x3f

    aput v4, v2, v3

    new-array v4, v1, [Z

    aput-boolean v3, v4, v3

    invoke-direct {v0, v2, v4}, Lcom/android/settings/applications/appops/a$c;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/a;->k:Lcom/android/settings/applications/appops/a$c;

    const/4 v0, 0x6

    .line 214
    new-array v0, v0, [Lcom/android/settings/applications/appops/a$c;

    sget-object v2, Lcom/android/settings/applications/appops/a;->f:Lcom/android/settings/applications/appops/a$c;

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/settings/applications/appops/a;->g:Lcom/android/settings/applications/appops/a$c;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings/applications/appops/a;->h:Lcom/android/settings/applications/appops/a$c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/appops/a;->i:Lcom/android/settings/applications/appops/a$c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/appops/a;->j:Lcom/android/settings/applications/appops/a$c;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/appops/a;->k:Lcom/android/settings/applications/appops/a$c;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/applications/appops/a;->l:[Lcom/android/settings/applications/appops/a$c;

    .line 437
    new-instance v0, Lcom/android/settings/applications/appops/a$1;

    invoke-direct {v0}, Lcom/android/settings/applications/appops/a$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/appops/a;->m:Ljava/util/Comparator;

    .line 460
    new-instance v0, Lcom/android/settings/applications/appops/a$2;

    invoke-direct {v0}, Lcom/android/settings/applications/appops/a$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/appops/a;->n:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0xa
        0xc
        0x29
        0x2a
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x1d
        0x1e
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0xe
        0x10
        0x11
        0x12
        0x13
        0xf
        0x14
        0x15
        0x16
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_6
    .array-data 4
        0x3
        0x1a
        0x1b
        0x1c
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x40
        0x2c
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8
    .array-data 4
        0xb
        0x19
        0xd
        0x17
        0x18
        0x28
        0x2e
        0x2f
        0x31
        0x32
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/settings/applications/appops/a;->a:Landroid/content/Context;

    const-string v0, "appops"

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/appops/a;->b:Landroid/app/AppOpsManager;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/a;->c:Landroid/content/pm/PackageManager;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/a;->d:[Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03000e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appops/a;->e:[Ljava/lang/CharSequence;

    return-void
.end method

.method static a(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/appops/a$a;Landroid/app/AppOpsManager$OpEntry;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/a$b;",
            ">;",
            "Landroid/app/AppOpsManager$PackageOps;",
            "Lcom/android/settings/applications/appops/a$a;",
            "Landroid/app/AppOpsManager$OpEntry;",
            ")V"
        }
    .end annotation

    .line 471
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 472
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appops/a$b;

    .line 1353
    iget-object v2, v0, Lcom/android/settings/applications/appops/a$b;->b:Lcom/android/settings/applications/appops/a$a;

    if-ne v2, p2, :cond_2

    .line 474
    invoke-virtual {v0}, Lcom/android/settings/applications/appops/a$b;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 475
    :goto_0
    invoke-virtual {p3}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-ne v2, v1, :cond_2

    .line 479
    invoke-virtual {v0, p3}, Lcom/android/settings/applications/appops/a$b;->a(Landroid/app/AppOpsManager$OpEntry;)V

    return-void

    .line 484
    :cond_2
    invoke-virtual {p3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/settings/applications/appops/a$a;->a(I)Lcom/android/settings/applications/appops/a$b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 486
    invoke-virtual {v0, p3}, Lcom/android/settings/applications/appops/a$b;->a(Landroid/app/AppOpsManager$OpEntry;)V

    return-void

    .line 489
    :cond_3
    new-instance v0, Lcom/android/settings/applications/appops/a$b;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/settings/applications/appops/a$b;-><init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/settings/applications/appops/a$a;)V

    .line 492
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/appops/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/appops/a$a;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Lcom/android/settings/applications/appops/a$a;"
        }
    .end annotation

    .line 505
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appops/a$a;

    if-nez v0, :cond_5

    if-nez p4, :cond_0

    .line 509
    :try_start_0
    iget-object p4, p0, Lcom/android/settings/applications/appops/a;->c:Landroid/content/pm/PackageManager;

    const v0, 0x400200

    invoke-virtual {p4, p3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    :catch_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unable to find info for package "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppOpsState"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 517
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/settings/applications/appops/a$a;

    invoke-direct {v0, p0, p4}, Lcom/android/settings/applications/appops/a$a;-><init>(Lcom/android/settings/applications/appops/a;Landroid/content/pm/ApplicationInfo;)V

    .line 2290
    iget-object p4, v0, Lcom/android/settings/applications/appops/a$a;->e:Ljava/lang/String;

    if-eqz p4, :cond_1

    iget-boolean p4, v0, Lcom/android/settings/applications/appops/a$a;->g:Z

    if-nez p4, :cond_4

    .line 2291
    :cond_1
    iget-object p4, v0, Lcom/android/settings/applications/appops/a$a;->c:Ljava/io/File;

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p4

    if-nez p4, :cond_2

    const/4 p1, 0x0

    .line 2292
    iput-boolean p1, v0, Lcom/android/settings/applications/appops/a$a;->g:Z

    goto :goto_1

    :cond_2
    const/4 p4, 0x1

    .line 2295
    iput-boolean p4, v0, Lcom/android/settings/applications/appops/a$a;->g:Z

    .line 2296
    iget-object p4, v0, Lcom/android/settings/applications/appops/a$a;->b:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2297
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, v0, Lcom/android/settings/applications/appops/a$a;->b:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_2
    iput-object p1, v0, Lcom/android/settings/applications/appops/a$a;->e:Ljava/lang/String;

    .line 519
    :cond_4
    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

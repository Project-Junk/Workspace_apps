.class final Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;
.super Ljava/lang/Object;
.source "PhoneStorageAsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J

.field e:J

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/storage/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->f:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 761
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/coloros/settings/feature/storage/a/a;Lcom/coloros/settings/feature/storage/a/a;)I
    .locals 4

    .line 802
    iget-wide v0, p0, Lcom/coloros/settings/feature/storage/a/a;->b:J

    iget-wide v2, p1, Lcom/coloros/settings/feature/storage/a/a;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 804
    :cond_0
    iget-wide v0, p0, Lcom/coloros/settings/feature/storage/a/a;->b:J

    iget-wide v2, p1, Lcom/coloros/settings/feature/storage/a/a;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 805
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/a/a;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/coloros/settings/feature/storage/a/a;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static synthetic lambda$qfSOtra-YjsrCNa96wXcuFMmr90(Lcom/coloros/settings/feature/storage/a/a;Lcom/coloros/settings/feature/storage/a/a;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->a(Lcom/coloros/settings/feature/storage/a/a;Lcom/coloros/settings/feature/storage/a/a;)I

    move-result p0

    return p0
.end method


# virtual methods
.method final a()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/storage/a/a;",
            ">;"
        }
    .end annotation

    .line 801
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->f:Ljava/util/ArrayList;

    sget-object v1, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$a$qfSOtra-YjsrCNa96wXcuFMmr90;->INSTANCE:Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$a$qfSOtra-YjsrCNa96wXcuFMmr90;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 809
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method final a(Lcom/coloros/settings/feature/storage/a/a;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 813
    iget-object v0, p1, Lcom/coloros/settings/feature/storage/a/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 814
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 815
    iget-object v1, p1, Lcom/coloros/settings/feature/storage/a/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/feature/storage/a/a;

    iget-object v2, v2, Lcom/coloros/settings/feature/storage/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " totalFolderSize:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mediaSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " eliminateFileSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " otherSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " appFilesSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

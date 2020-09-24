.class public final Lcom/coloros/settings/ringtone/b;
.super Ljava/io/File;
.source "FileWrapper.java"


# instance fields
.field public a:I


# direct methods
.method private constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/b;->a()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/b;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/b;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/b;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/ringtone/h;->a(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/coloros/settings/ringtone/b;->a:I

    return-void
.end method


# virtual methods
.method public final synthetic getAbsoluteFile()Ljava/io/File;
    .locals 2

    .line 3126
    new-instance v0, Lcom/coloros/settings/ringtone/b;

    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/b;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/settings/ringtone/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic getCanonicalFile()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2131
    new-instance v0, Lcom/coloros/settings/ringtone/b;

    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/b;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/settings/ringtone/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic getParentFile()Ljava/io/File;
    .locals 2

    .line 4117
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/b;->getParent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4121
    :cond_0
    new-instance v1, Lcom/coloros/settings/ringtone/b;

    invoke-direct {v1, v0}, Lcom/coloros/settings/ringtone/b;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final synthetic listFiles()[Ljava/io/File;
    .locals 6

    .line 2072
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/b;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2076
    :cond_0
    array-length v1, v0

    .line 2077
    new-array v2, v1, [Lcom/coloros/settings/ringtone/b;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 2079
    new-instance v4, Lcom/coloros/settings/ringtone/b;

    aget-object v5, v0, v3

    invoke-direct {v4, p0, v5}, Lcom/coloros/settings/ringtone/b;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public final synthetic listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 5

    .line 1086
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/b;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1090
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 1091
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 1092
    new-instance v3, Lcom/coloros/settings/ringtone/b;

    aget-object v4, v0, v2

    invoke-direct {v3, p0, v4}, Lcom/coloros/settings/ringtone/b;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1093
    invoke-interface {p1, v3}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1094
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1097
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/coloros/settings/ringtone/b;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/coloros/settings/ringtone/b;

    return-object p1
.end method

.method public final synthetic listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 5

    .line 1102
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/b;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1106
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 1107
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    if-eqz p1, :cond_1

    .line 1108
    aget-object v3, v0, v2

    invoke-interface {p1, p0, v3}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1109
    :cond_1
    new-instance v3, Lcom/coloros/settings/ringtone/b;

    aget-object v4, v0, v2

    invoke-direct {v3, p0, v4}, Lcom/coloros/settings/ringtone/b;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1112
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/coloros/settings/ringtone/b;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/coloros/settings/ringtone/b;

    check-cast p1, [Lcom/coloros/settings/ringtone/b;

    return-object p1
.end method

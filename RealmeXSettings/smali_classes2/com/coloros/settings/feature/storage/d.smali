.class public final Lcom/coloros/settings/feature/storage/d;
.super Ljava/lang/Object;
.source "TypeHelper.java"


# static fields
.field static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 29

    const-string v0, ".rar"

    const-string v1, ".zip"

    const-string v2, ".ozip"

    const-string v3, ".jar"

    .line 66
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/storage/d;->a:[Ljava/lang/String;

    const-string v1, ".doc"

    const-string v2, ".txt"

    const-string v3, ".docx"

    const-string v4, ".html"

    const-string v5, ".htm"

    const-string v6, ".csv"

    const-string v7, ".vcf"

    const-string v8, ".ics"

    const-string v9, ".vcs"

    const-string v10, ".xls"

    const-string v11, ".xlsx"

    const-string v12, ".ppt"

    const-string v13, ".pptx"

    const-string v14, ".pdf"

    const-string v15, ".ebk2"

    const-string v16, ".ebk3"

    const-string v17, ".chm"

    const-string v18, ".epub"

    .line 68
    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/storage/d;->b:[Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/storage/d;->d:Ljava/util/Map;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    .line 78
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".doc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".html"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const-string v2, ".htm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/high16 v1, 0x80000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".epub"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".lrc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".csv"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".vcf"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".ics"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/16 v1, 0x4000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".vcs"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".apk"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".theme"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/high16 v1, 0x20000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".db"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/high16 v1, 0x40000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".dat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/high16 v1, 0x100000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".docx"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/high16 v1, 0x200000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".xls"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/high16 v1, 0x400000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".xlsx"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/high16 v1, 0x800000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".ppt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/high16 v1, 0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".pptx"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/high16 v1, 0x2000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".pdf"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".txt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/high16 v1, 0x4000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".wav"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/high16 v1, 0x8000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".amr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".vmsg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/high16 v1, -0x80000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ".torrent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, ".jpg"

    const-string v4, ".jpeg"

    const-string v5, ".gif"

    const-string v6, ".png"

    const-string v7, ".bmp"

    const-string v8, ".wbmp"

    const-string v9, ".webp"

    const-string v10, ".mpo"

    .line 125
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    .line 127
    sget-object v4, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1

    const-string v4, ".mp3"

    const-string v5, ".wma"

    const-string v6, ".mp2"

    const-string v7, ".oga"

    const-string v8, ".aac"

    const-string v9, ".midi"

    const-string v10, ".flac"

    const-string v11, ".ape"

    const-string v12, ".ra"

    const-string v13, ".mid"

    const-string v14, ".awb"

    const-string v15, ".ogg"

    const-string v16, ".m4a"

    const-string v17, ".xmf"

    const-string v18, ".rtttl"

    const-string v19, ".smf"

    const-string v20, ".imy"

    const-string v21, ".m3u"

    const-string v22, ".pls"

    const-string v23, ".wpl"

    const-string v24, ".mka"

    const-string v25, ".snd"

    const-string v26, ".aiff"

    const-string v27, ".vmd"

    const-string v28, ".adp"

    .line 132
    filled-new-array/range {v4 .. v28}, [Ljava/lang/String;

    move-result-object v0

    move v4, v1

    :goto_1
    const/16 v5, 0x19

    if-ge v4, v5, :cond_2

    aget-object v5, v0, v4

    .line 135
    sget-object v6, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string v5, ".mp3"

    const-string v6, ".wma"

    const-string v7, ".mp2"

    const-string v8, ".oga"

    const-string v9, ".aac"

    const-string v10, ".midi"

    const-string v11, ".flac"

    const-string v12, ".ape"

    const-string v13, ".mid"

    const-string v14, ".awb"

    const-string v15, ".ogg"

    const-string v16, ".m4a"

    const-string v17, ".xmf"

    const-string v18, ".rtttl"

    const-string v19, ".smf"

    const-string v20, ".imy"

    const-string v21, ".m3u"

    const-string v22, ".pls"

    const-string v23, ".wpl"

    const-string v24, ".mka"

    const-string v25, ".snd"

    const-string v26, ".aiff"

    const-string v27, ".vmd"

    const-string v28, ".adp"

    .line 139
    filled-new-array/range {v5 .. v28}, [Ljava/lang/String;

    move-result-object v0

    move v4, v1

    :goto_2
    const/16 v5, 0x18

    if-ge v4, v5, :cond_2

    aget-object v5, v0, v4

    .line 142
    sget-object v6, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 146
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v0, v2, :cond_3

    const-string v4, ".mp4"

    const-string v5, ".rmvb"

    const-string v6, ".mkv"

    const-string v7, ".avi"

    const-string v8, ".wmv"

    const-string v9, ".rm"

    const-string v10, ".flv"

    const-string v11, ".mov"

    const-string v12, ".asf"

    const-string v13, ".3gp"

    const-string v14, ".3gpp"

    const-string v15, ".3g2"

    const-string v16, ".3gpp2"

    const-string v17, ".m4v"

    const-string v18, ".mpeg"

    const-string v19, ".f4v"

    const-string v20, ".mpg"

    const-string v21, ".ts"

    const-string v22, ".webm"

    const-string v23, ".m2ts"

    .line 148
    filled-new-array/range {v4 .. v23}, [Ljava/lang/String;

    move-result-object v0

    move v2, v1

    :goto_3
    const/16 v4, 0x14

    if-ge v2, v4, :cond_4

    aget-object v4, v0, v2

    .line 151
    sget-object v5, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const-string v4, ".mp4"

    const-string v5, ".mkv"

    const-string v6, ".avi"

    const-string v7, ".wmv"

    const-string v8, ".flv"

    const-string v9, ".mov"

    const-string v10, ".asf"

    const-string v11, ".3gp"

    const-string v12, ".3gpp"

    const-string v13, ".3g2"

    const-string v14, ".3gpp2"

    const-string v15, ".m4v"

    const-string v16, ".mpeg"

    const-string v17, ".f4v"

    const-string v18, ".mpg"

    const-string v19, ".ts"

    const-string v20, ".webm"

    const-string v21, ".m2ts"

    .line 155
    filled-new-array/range {v4 .. v21}, [Ljava/lang/String;

    move-result-object v0

    move v2, v1

    :goto_4
    const/16 v4, 0x12

    if-ge v2, v4, :cond_4

    aget-object v4, v0, v2

    .line 158
    sget-object v5, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 165
    :cond_4
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->a:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_5
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 166
    sget-object v5, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/16 v6, 0x80

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    const-string v0, ".ebk2"

    const-string v2, ".ebk3"

    const-string v3, ".chm"

    .line 170
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    :goto_6
    const/4 v2, 0x3

    if-ge v1, v2, :cond_6

    aget-object v2, v0, v1

    .line 171
    sget-object v3, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 176
    :cond_6
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->d:Ljava/util/Map;

    const-string v1, "7z"

    const-string v2, "application/x-7z-compressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 191
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/utils/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 192
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "."

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1180
    sget-object v1, Lcom/coloros/settings/feature/storage/d;->c:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2

    return v0

    .line 1184
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 196
    sget-object v0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    sparse-switch p1, :sswitch_data_0

    const v0, 0x7f080681

    .line 310
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 311
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_0
    const v0, 0x7f080683

    .line 266
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 267
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_1
    const v0, 0x7f080684

    .line 261
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 262
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_2
    const v0, 0x7f08067c

    .line 255
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 256
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_3
    const v0, 0x7f080679

    .line 249
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 250
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_4
    const v0, 0x7f080677

    .line 288
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 289
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_5
    const v0, 0x7f080689

    .line 277
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 278
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_6
    const v0, 0x7f080680

    .line 293
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 294
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_7
    const v0, 0x7f080688

    .line 231
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 232
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_8
    const v0, 0x7f08067e

    .line 226
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 227
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_9
    const v0, 0x7f080678

    .line 300
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 301
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_a
    const v0, 0x7f080674

    .line 236
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 237
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_b
    const v0, 0x7f080686

    .line 282
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 283
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_c
    const v0, 0x7f08068a

    .line 216
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 217
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :sswitch_d
    const v0, 0x7f080687

    .line 305
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 306
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :sswitch_e
    const v0, 0x7f080675

    .line 211
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 212
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    const v0, 0x7f080685

    .line 271
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 272
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    const v0, 0x7f08067f

    .line 221
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 222
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    :sswitch_f
    const v0, 0x7f08067a

    .line 243
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 244
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    const v0, 0x7f08067d

    .line 204
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 205
    sget-object p0, Lcom/coloros/settings/feature/storage/d;->e:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_d
        0x10 -> :sswitch_c
        0x20 -> :sswitch_b
        0x40 -> :sswitch_a
        0x80 -> :sswitch_9
        0x100 -> :sswitch_8
        0x200 -> :sswitch_7
        0x400 -> :sswitch_6
        0x800 -> :sswitch_5
        0x1000 -> :sswitch_5
        0x2000 -> :sswitch_4
        0x4000 -> :sswitch_4
        0x8000 -> :sswitch_3
        0x80000 -> :sswitch_f
        0x100000 -> :sswitch_3
        0x200000 -> :sswitch_2
        0x400000 -> :sswitch_2
        0x800000 -> :sswitch_1
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_0
        0x4000000 -> :sswitch_e
        0x8000000 -> :sswitch_e
        0x20000000 -> :sswitch_9
        0x40000000 -> :sswitch_9
    .end sparse-switch
.end method

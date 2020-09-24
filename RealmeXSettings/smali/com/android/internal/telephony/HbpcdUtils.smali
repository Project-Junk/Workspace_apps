.class public final Lcom/android/internal/telephony/HbpcdUtils;
.super Ljava/lang/Object;
.source "HbpcdUtils.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HbpcdUtils"


# instance fields
.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final getIddByMcc(I)Ljava/lang/String;
    .locals 7

    const-string v0, "IDD"

    .line 143
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 144
    iget-object v1, p0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/HbpcdLookup$MccIdd;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MCC="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 147
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 151
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 152
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method public final getMcc(IIIZ)I
    .locals 10

    const-string v0, "MCC"

    .line 50
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 51
    iget-object v1, p0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/HbpcdLookup$ArbitraryMccSidMatch;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SID="

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 55
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 63
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 64
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 68
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return p1

    .line 71
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    .line 77
    iget-object v4, p0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/HbpcdLookup$MccSidConflicts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "SID_Conflict="

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and (((GMT_Offset_Low<="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") and ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "<=GMT_Offset_High) and (0="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")) or ((GMT_DST_Low<="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "<=GMT_DST_High) and (1="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")))"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 85
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-lez p3, :cond_4

    if-le p3, v2, :cond_2

    .line 88
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "something wrong, get more results for 1 conflict SID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "HbpcdUtils"

    invoke-static {p3, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 92
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-nez p4, :cond_3

    move p1, v3

    .line 103
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return p1

    .line 106
    :cond_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    .line 112
    iget-object v4, p0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/HbpcdLookup$MccSidRange;->CONTENT_URI:Landroid/net/Uri;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SID_Range_Low<="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " and SID_Range_High>="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 117
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_6

    .line 119
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 120
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 122
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p2

    .line 125
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    return v3
.end method

.class public final Lcom/a/c;
.super Ljava/lang/Object;
.source "AccountNameAgent.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "accountName"

    const-string v1, "showUserName"

    const-string v2, "isNameModified"

    const-string v3, "isNeed2Bind"

    const-string v4, "avatar"

    .line 1
    filled-new-array {v3, v2, v1, v0, v4}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/a/c;->a:[Ljava/lang/String;

    .line 2
    filled-new-array {v3, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/c;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/heytap/usercenter/accountsdk/AccountResult;
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/a/a;->b:Landroid/net/Uri;

    sget-object v3, Lcom/a/c;->a:[Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/a/c;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-static {v1}, Lcom/a/c;->a(Landroid/database/Cursor;)Lcom/heytap/usercenter/accountsdk/AccountResult;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 5
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 6
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/a/a;->b:Landroid/net/Uri;

    sget-object v5, Lcom/a/c;->b:[Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/a/c;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 9
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/a/c;->a(Landroid/database/Cursor;)Lcom/heytap/usercenter/accountsdk/AccountResult;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_0

    .line 11
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_2
    move-exception p0

    .line 12
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_0

    .line 13
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    :cond_0
    :goto_1
    return-object v0

    :goto_2
    if-eqz v1, :cond_1

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 14
    :catch_4
    :cond_1
    throw p0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/heytap/usercenter/accountsdk/AccountResult;
    .locals 4

    .line 18
    new-instance v0, Lcom/heytap/usercenter/accountsdk/AccountResult;

    invoke-direct {v0}, Lcom/heytap/usercenter/accountsdk/AccountResult;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    .line 19
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 20
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 21
    sget-object v2, Lcom/a/c;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setNeedBind(Z)V

    .line 22
    sget-object v2, Lcom/a/c;->a:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setNameModified(Z)V

    .line 23
    sget-object v1, Lcom/a/c;->a:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setAccountName(Ljava/lang/String;)V

    .line 24
    sget-object v1, Lcom/a/c;->a:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setOldUserName(Ljava/lang/String;)V

    .line 25
    sget-object v1, Lcom/a/c;->a:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 26
    sget-object v1, Lcom/a/c;->a:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setAvatar(Ljava/lang/String;)V

    .line 27
    :cond_2
    invoke-virtual {v0, v3}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setCanJump2Bind(Z)V

    const p0, 0x1c9c769

    .line 28
    invoke-virtual {v0, p0}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setResultCode(I)V

    const-string p0, "success"

    .line 29
    invoke-virtual {v0, p0}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setResultMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 30
    :cond_3
    invoke-virtual {v0, v1}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setCanJump2Bind(Z)V

    const/4 p0, 0x0

    .line 31
    invoke-virtual {v0, p0}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setOldUserName(Ljava/lang/String;)V

    const p0, 0x1c9cf65

    .line 32
    invoke-virtual {v0, p0}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setResultCode(I)V

    const-string/jumbo p0, "usercenter low version"

    .line 33
    invoke-virtual {v0, p0}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setResultMsg(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method private static a()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    .line 15
    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/a/c;->a:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "(%s is not null)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 16
    new-array v4, v0, [Ljava/lang/Object;

    sget-object v5, Lcom/a/c;->a:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 17
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object v2, v4, v0

    const-string v0, "%s AND %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

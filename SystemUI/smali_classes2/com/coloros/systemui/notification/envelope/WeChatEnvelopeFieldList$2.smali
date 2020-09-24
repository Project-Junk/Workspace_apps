.class Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$2;
.super Ljava/lang/Thread;
.source "WeChatEnvelopeFieldList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->updateEnvelopeInfoFromDB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$2;->this$0:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "content://com.oppo.systemui/envelope"

    .line 142
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$2;->this$0:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    invoke-static {v1}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->access$100(Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 145
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 148
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    :try_start_1
    invoke-static {}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->access$500()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 150
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    new-instance v2, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;

    iget-object v3, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$2;->this$0:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    invoke-direct {v2, v3}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;-><init>(Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;)V

    const-string v3, "pkg_version"

    .line 152
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mPkgVersion:Ljava/lang/String;

    const-string v3, "envelope_filter_field"

    .line 153
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeFilterField:Ljava/lang/String;

    const-string v3, "envelope_filter_value"

    .line 154
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeFilterValue:Ljava/lang/String;

    const-string v3, "envelope_user_field"

    .line 155
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeUserField:Ljava/lang/String;

    const-string v3, "envelope_group_tag"

    .line 156
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeGroupTag:Ljava/lang/String;

    const-string v3, "envelope_user_name_tag_first"

    .line 157
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeUserNameTagFirst:Ljava/lang/String;

    const-string v3, "envelope_user_name_tag_last"

    .line 158
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeUserNameTagLast:Ljava/lang/String;

    const-string v3, "envelope_content_tag"

    .line 159
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeContentTag:Ljava/lang/String;

    .line 160
    invoke-static {}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->access$500()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$2;->this$0:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->access$602(Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;Z)Z

    .line 163
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 146
    :cond_2
    :goto_1
    invoke-static {}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v1, "updateEnvelopeInfoFromDB cursor is null or count is 0."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v0, :cond_3

    .line 170
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 167
    :try_start_3
    invoke-static {}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAdaptationEnvelopeInfoList query error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    :goto_4
    return-void

    :goto_5
    if-eqz v0, :cond_4

    .line 170
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 172
    :cond_4
    throw p0
.end method

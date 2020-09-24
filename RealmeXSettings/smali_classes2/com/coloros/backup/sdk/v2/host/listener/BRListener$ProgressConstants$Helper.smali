.class public Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;
.super Ljava/lang/Object;
.source "BRListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Helper"
.end annotation


# static fields
.field public static final BR_RESULT_CANCEL:I = 0x3

.field public static final BR_RESULT_FAILED:I = 0x2

.field public static final BR_RESULT_SUCCESS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllRemainTime(Landroid/os/Bundle;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-string v2, "all_remain_time"

    .line 173
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static getBRResult(Landroid/os/Bundle;)I
    .locals 1

    const/4 v0, 0x2

    .line 118
    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->getBRResult(Landroid/os/Bundle;I)I

    move-result p0

    return p0
.end method

.method public static getBRResult(Landroid/os/Bundle;I)I
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "br_result"

    .line 123
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static getCompletedCount(Landroid/os/Bundle;)I
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->getCompletedCount(Landroid/os/Bundle;I)I

    move-result p0

    return p0
.end method

.method public static getCompletedCount(Landroid/os/Bundle;I)I
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "completed_count"

    .line 134
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static getCompletedPaths(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "completed_paths"

    .line 147
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMaxCount(Landroid/os/Bundle;)I
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->getMaxCount(Landroid/os/Bundle;I)I

    move-result p0

    return p0
.end method

.method public static getMaxCount(Landroid/os/Bundle;I)I
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "max_count"

    .line 100
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static getPreviewDataSize(Landroid/os/Bundle;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-string v2, "preview_data_size"

    .line 160
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static getPreviewList(Landroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "preview_list"

    .line 199
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPreviewListItemCount(Landroid/os/Bundle;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "preview_list_item_count"

    .line 291
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static getPreviewListItemDefaultSelected(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "preview_list_item_default_selected"

    .line 305
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static getPreviewListItemIcon(Landroid/os/Bundle;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "preview_list_item_icon"

    .line 226
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static getPreviewListItemPackage(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_package"

    .line 318
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPreviewListItemSubCacheSize(Landroid/os/Bundle;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-string v2, "preview_list_item_cache_size"

    .line 278
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static getPreviewListItemSubDataSize(Landroid/os/Bundle;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-string v2, "preview_list_item_data_size"

    .line 265
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static getPreviewListItemSubTitle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_sub_title"

    .line 252
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPreviewListItemTitle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_title"

    .line 239
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPreviewSelectedList(Landroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "preview_selected_list"

    .line 213
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUpdateRemainTime(Landroid/os/Bundle;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-string v2, "update_remain_time"

    .line 186
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static putAllRemainTime(Landroid/os/Bundle;J)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "all_remain_time"

    .line 167
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static putBRResult(Landroid/os/Bundle;I)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "br_result"

    .line 113
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static putCompletedCount(Landroid/os/Bundle;I)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "completed_count"

    .line 107
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static putCompletedPaths(Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "completed_paths"

    .line 141
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public static putMaxCount(Landroid/os/Bundle;I)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "max_count"

    .line 90
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static putPreviewArrayList(Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "preview_list"

    .line 193
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public static putPreviewDataSize(Landroid/os/Bundle;J)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_data_size"

    .line 154
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static putPreviewListItemCount(Landroid/os/Bundle;I)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_count"

    .line 285
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static putPreviewListItemDefaultSelected(Landroid/os/Bundle;Z)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_default_selected"

    .line 299
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static putPreviewListItemIcon(Landroid/os/Bundle;I)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_icon"

    .line 220
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static putPreviewListItemPackage(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_package"

    .line 312
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static putPreviewListItemSubCacheSize(Landroid/os/Bundle;J)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_cache_size"

    .line 272
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static putPreviewListItemSubDataSize(Landroid/os/Bundle;J)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_data_size"

    .line 259
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static putPreviewListItemSubTitle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_sub_title"

    .line 246
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static putPreviewListItemTitle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_title"

    .line 233
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static putPreviewSelectedArrayList(Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "preview_selected_list"

    .line 207
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public static putUpdateRemainTime(Landroid/os/Bundle;J)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "update_remain_time"

    .line 180
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

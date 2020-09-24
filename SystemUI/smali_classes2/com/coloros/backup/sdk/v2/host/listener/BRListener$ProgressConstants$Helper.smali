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

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllRemainTime(Landroid/os/Bundle;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-string v2, "all_remain_time"

    .line 171
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static getBRResult(Landroid/os/Bundle;)I
    .locals 1

    const/4 v0, 0x2

    .line 116
    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->getBRResult(Landroid/os/Bundle;I)I

    move-result p0

    return p0
.end method

.method public static getBRResult(Landroid/os/Bundle;I)I
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "br_result"

    .line 121
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static getCompletedCount(Landroid/os/Bundle;)I
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->getCompletedCount(Landroid/os/Bundle;I)I

    move-result p0

    return p0
.end method

.method public static getCompletedCount(Landroid/os/Bundle;I)I
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "completed_count"

    .line 132
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

    .line 145
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

    .line 93
    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->getMaxCount(Landroid/os/Bundle;I)I

    move-result p0

    return p0
.end method

.method public static getMaxCount(Landroid/os/Bundle;I)I
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "max_count"

    .line 98
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

    .line 158
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

    .line 197
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

    .line 289
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

    .line 303
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

    .line 224
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

    .line 316
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

    .line 276
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

    .line 263
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static getPreviewListItemSubTitle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_sub_title"

    .line 250
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

    .line 237
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

    .line 211
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

    .line 184
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static putAllRemainTime(Landroid/os/Bundle;J)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "all_remain_time"

    .line 165
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static putBRResult(Landroid/os/Bundle;I)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "br_result"

    .line 111
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static putCompletedCount(Landroid/os/Bundle;I)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "completed_count"

    .line 105
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

    .line 139
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public static putMaxCount(Landroid/os/Bundle;I)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "max_count"

    .line 88
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

    .line 191
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public static putPreviewDataSize(Landroid/os/Bundle;J)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_data_size"

    .line 152
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static putPreviewListItemCount(Landroid/os/Bundle;I)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_count"

    .line 283
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static putPreviewListItemDefaultSelected(Landroid/os/Bundle;Z)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_default_selected"

    .line 297
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static putPreviewListItemIcon(Landroid/os/Bundle;I)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_icon"

    .line 218
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static putPreviewListItemPackage(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_package"

    .line 310
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static putPreviewListItemSubCacheSize(Landroid/os/Bundle;J)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_cache_size"

    .line 270
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static putPreviewListItemSubDataSize(Landroid/os/Bundle;J)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_data_size"

    .line 257
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static putPreviewListItemSubTitle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_sub_title"

    .line 244
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static putPreviewListItemTitle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "preview_list_item_title"

    .line 231
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

    .line 205
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public static putUpdateRemainTime(Landroid/os/Bundle;J)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "update_remain_time"

    .line 178
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.class public final Lcom/android/systemui/statusbar/notification/row/ChannelRow;
.super Landroid/widget/LinearLayout;
.source "ChannelEditorListView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelEditorListView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelEditorListView.kt\ncom/android/systemui/statusbar/notification/row/ChannelRow\n*L\n1#1,184:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u001f\u001a\u00020 H\u0014J\u0008\u0010!\u001a\u00020 H\u0002J\u0008\u0010\"\u001a\u00020 H\u0002R(\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u001eX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/android/systemui/statusbar/notification/row/ChannelRow;",
        "Landroid/widget/LinearLayout;",
        "c",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "newValue",
        "Landroid/app/NotificationChannel;",
        "channel",
        "getChannel",
        "()Landroid/app/NotificationChannel;",
        "setChannel",
        "(Landroid/app/NotificationChannel;)V",
        "channelDescription",
        "Landroid/widget/TextView;",
        "channelName",
        "controller",
        "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
        "getController",
        "()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
        "setController",
        "(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V",
        "gentle",
        "",
        "getGentle",
        "()Z",
        "setGentle",
        "(Z)V",
        "switch",
        "Landroid/widget/Switch;",
        "onFinishInflate",
        "",
        "updateImportance",
        "updateViews",
        "SystemUI_realmeReleaseExp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private channel:Landroid/app/NotificationChannel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private channelDescription:Landroid/widget/TextView;

.field private channelName:Landroid/widget/TextView;

.field public controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private gentle:Z

.field private switch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final updateImportance()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channel:Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, -0x3e8

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    const/4 v1, 0x1

    .line 181
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->gentle:Z

    return-void
.end method

.method private final updateViews()V
    .locals 6

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_c

    .line 164
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelName:Landroid/widget/TextView;

    if-nez v1, :cond_0

    const-string v2, "channelName"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, ""

    check-cast v2, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    const-string v2, "channelDescription"

    if-eqz v1, :cond_4

    .line 167
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelDescription:Landroid/widget/TextView;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    if-nez v4, :cond_3

    const-string v5, "controller"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->groupNameForId(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_4
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelDescription:Landroid/widget/TextView;

    if-nez v1, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 173
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelDescription:Landroid/widget/TextView;

    if-nez v1, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 171
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelDescription:Landroid/widget/TextView;

    if-nez v1, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->switch:Landroid/widget/Switch;

    if-nez p0, :cond_a

    const-string v1, "switch"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v3, 0x1

    :cond_b
    invoke-virtual {p0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_c
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getChannel()Landroid/app/NotificationChannel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 143
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channel:Landroid/app/NotificationChannel;

    return-object p0
.end method

.method public final getController()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 137
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    if-nez p0, :cond_0

    const-string v0, "controller"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final getGentle()Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->gentle:Z

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f0a0158

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.channel_name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelName:Landroid/widget/TextView;

    const v0, 0x7f0a0156

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.channel_description)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelDescription:Landroid/widget/TextView;

    const v0, 0x7f0a05a7

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.toggle)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->switch:Landroid/widget/Switch;

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->switch:Landroid/widget/Switch;

    if-nez v0, :cond_0

    const-string v1, "switch"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelRow;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final setChannel(Landroid/app/NotificationChannel;)V
    .locals 0
    .param p1    # Landroid/app/NotificationChannel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 145
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channel:Landroid/app/NotificationChannel;

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->updateImportance()V

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->updateViews()V

    return-void
.end method

.method public final setController(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    return-void
.end method

.method public final setGentle(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->gentle:Z

    return-void
.end method

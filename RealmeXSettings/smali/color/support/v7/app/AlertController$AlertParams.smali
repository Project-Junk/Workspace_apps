.class public Lcolor/support/v7/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mDialogType:I

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mMessageNeedScroll:Z

.field public mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcolor/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mSummaries:[Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 966
    iput v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mIconId:I

    .line 974
    iput v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mIconAttrId:I

    .line 1093
    iput-boolean v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    const/4 v0, -0x1

    .line 1109
    iput v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 v0, 0x1

    .line 1145
    iput-boolean v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 1175
    iput-object p1, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1176
    iput-boolean v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    const-string v0, "layout_inflater"

    .line 1177
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private createListView(Lcolor/support/v7/app/AlertController;)V
    .locals 11

    .line 1250
    iget-object v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p1, Lcolor/support/v7/app/AlertController;->mListLayout:I

    const/4 v2, 0x0

    .line 1251
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/app/AlertController$RecycleListView;

    .line 1254
    iget-boolean v1, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_1

    .line 1255
    iget-object v4, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_0

    .line 1256
    new-instance v10, Lcolor/support/v7/app/AlertController$AlertParams$1;

    iget-object v3, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v4, p1, Lcolor/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    const v5, 0x1020014

    iget-object v6, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, v10

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcolor/support/v7/app/AlertController$AlertParams$1;-><init>(Lcolor/support/v7/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcolor/support/v7/app/AlertController$RecycleListView;)V

    goto :goto_0

    .line 1271
    :cond_0
    new-instance v10, Lcolor/support/v7/app/AlertController$AlertParams$2;

    iget-object v3, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcolor/support/v7/app/AlertController$AlertParams$2;-><init>(Lcolor/support/v7/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcolor/support/v7/app/AlertController$RecycleListView;Lcolor/support/v7/app/AlertController;)V

    goto :goto_0

    .line 1298
    :cond_1
    iget-boolean v1, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_3

    .line 1299
    iget v4, p1, Lcolor/support/v7/app/AlertController;->mSingleChoiceItemLayout:I

    .line 1300
    iget-object v5, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const v1, 0x1020014

    if-eqz v5, :cond_2

    .line 1301
    new-instance v10, Landroid/widget/SimpleCursorAdapter;

    iget-object v3, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    new-array v6, v9, [Ljava/lang/String;

    iget-object v2, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v2, v6, v8

    new-array v7, v9, [I

    aput v1, v7, v8

    move-object v2, v10

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_0

    .line 1303
    :cond_2
    iget-object v2, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_4

    .line 1306
    new-instance v10, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;

    iget-object v2, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v10, v2, v4, v1, v3}, Lcolor/support/v7/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1311
    :cond_3
    iget-object v1, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_4

    .line 1312
    iget-object v1, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v4, v1, 0x1

    .line 1313
    iget-object v1, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v5, v1, 0x1

    .line 1314
    new-instance v1, Lcolor/support/v7/app/SummaryAdapter;

    iget-object v3, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v7, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mSummaries:[Ljava/lang/CharSequence;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcolor/support/v7/app/SummaryAdapter;-><init>(Landroid/content/Context;ZZ[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    move-object v10, v1

    goto :goto_0

    .line 1316
    :cond_4
    iget-object v10, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 1321
    :goto_0
    iget-object v1, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcolor/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_5

    .line 1322
    invoke-interface {v1, v0}, Lcolor/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1328
    :cond_5
    iput-object v10, p1, Lcolor/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 1329
    iget v1, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    iput v1, p1, Lcolor/support/v7/app/AlertController;->mCheckedItem:I

    .line 1331
    iget-object v1, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_6

    .line 1332
    new-instance v1, Lcolor/support/v7/app/AlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcolor/support/v7/app/AlertController$AlertParams$3;-><init>(Lcolor/support/v7/app/AlertController$AlertParams;Lcolor/support/v7/app/AlertController;)V

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 1341
    :cond_6
    iget-object v1, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_7

    .line 1342
    new-instance v1, Lcolor/support/v7/app/AlertController$AlertParams$4;

    invoke-direct {v1, p0, v0, p1}, Lcolor/support/v7/app/AlertController$AlertParams$4;-><init>(Lcolor/support/v7/app/AlertController$AlertParams;Lcolor/support/v7/app/AlertController$RecycleListView;Lcolor/support/v7/app/AlertController;)V

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1355
    :cond_7
    :goto_1
    iget-object v1, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_8

    .line 1356
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1370
    :cond_8
    iget-boolean v1, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_9

    .line 1371
    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_alert_dialog_item_background:I

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertController$RecycleListView;->setSelector(I)V

    .line 1372
    invoke-virtual {v0, v8}, Lcolor/support/v7/app/AlertController$RecycleListView;->setItemsCanFocus(Z)V

    .line 1373
    invoke-virtual {v0, v9}, Lcolor/support/v7/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_2

    .line 1374
    :cond_9
    iget-boolean v1, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_a

    .line 1375
    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_alert_dialog_item_background:I

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertController$RecycleListView;->setSelector(I)V

    .line 1376
    invoke-virtual {v0, v8}, Lcolor/support/v7/app/AlertController$RecycleListView;->setItemsCanFocus(Z)V

    const/4 v1, 0x2

    .line 1377
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1380
    :cond_a
    :goto_2
    iput-object v0, p1, Lcolor/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public apply(Lcolor/support/v7/app/AlertController;)V
    .locals 7

    .line 1186
    iget-object v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1187
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_0

    .line 1189
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1190
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1192
    :cond_1
    iget-object v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1193
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1195
    :cond_2
    iget v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_3

    .line 1196
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertController;->setIcon(I)V

    .line 1198
    :cond_3
    iget v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_4

    .line 1199
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertController;->setIcon(I)V

    .line 1204
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mMessageNeedScroll:Z

    iput-boolean v0, p1, Lcolor/support/v7/app/AlertController;->mMessageNeedScroll:Z

    .line 1207
    iget-object v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 1208
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1210
    :cond_5
    iget-object v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    :cond_6
    const/4 v2, -0x1

    .line 1211
    iget-object v3, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcolor/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 1214
    :cond_7
    iget-object v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    :cond_8
    const/4 v2, -0x2

    .line 1215
    iget-object v3, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcolor/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 1218
    :cond_9
    iget-object v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    :cond_a
    const/4 v2, -0x3

    .line 1219
    iget-object v3, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcolor/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 1224
    :cond_b
    iget-object v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_d

    .line 1225
    :cond_c
    invoke-direct {p0, p1}, Lcolor/support/v7/app/AlertController$AlertParams;->createListView(Lcolor/support/v7/app/AlertController;)V

    .line 1227
    :cond_d
    iget-object v2, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v2, :cond_f

    .line 1228
    iget-boolean v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_e

    .line 1229
    iget v3, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v4, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mViewSpacingTop:I

    iget v5, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mViewSpacingRight:I

    iget v6, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcolor/support/v7/app/AlertController;->setView(Landroid/view/View;IIII)V

    goto :goto_1

    .line 1232
    :cond_e
    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 1234
    :cond_f
    iget v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_10

    .line 1235
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertController;->setView(I)V

    .line 1238
    :cond_10
    :goto_1
    iget v0, p0, Lcolor/support/v7/app/AlertController$AlertParams;->mDialogType:I

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertController;->setDialogType(I)V

    return-void
.end method

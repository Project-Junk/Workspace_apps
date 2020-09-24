.class public Lcolor/support/dialog/ColorListDialog;
.super Ljava/lang/Object;
.source "ColorListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/dialog/ColorListDialog$ViewHolder;,
        Lcolor/support/dialog/ColorListDialog$Adapter;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBuilder:Lcolor/support/v7/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mCustomRes:I

.field private mCustomView:Landroid/view/View;

.field private mDialog:Lcolor/support/v7/app/AlertDialog;

.field private mHasCustom:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTextAppearances:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcolor/support/dialog/ColorListDialog;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcolor/support/dialog/ColorListDialog;->mBuilder:Lcolor/support/v7/app/AlertDialog$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcolor/support/dialog/ColorListDialog;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcolor/support/dialog/ColorListDialog;->mBuilder:Lcolor/support/v7/app/AlertDialog$Builder;

    return-void
.end method

.method static synthetic access$000(Lcolor/support/dialog/ColorListDialog;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcolor/support/dialog/ColorListDialog;->mMessageView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcolor/support/dialog/ColorListDialog;)Lcolor/support/v7/app/AlertDialog;
    .locals 0

    .line 43
    iget-object p0, p0, Lcolor/support/dialog/ColorListDialog;->mDialog:Lcolor/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcolor/support/dialog/ColorListDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcolor/support/dialog/ColorListDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method private create()Lcolor/support/v7/app/AlertDialog;
    .locals 3

    .line 155
    iget-object v0, p0, Lcolor/support/dialog/ColorListDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$layout;->color_list_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 156
    invoke-direct {p0, v0}, Lcolor/support/dialog/ColorListDialog;->setupMessage(Landroid/view/View;)V

    .line 157
    invoke-direct {p0, v0}, Lcolor/support/dialog/ColorListDialog;->setupCustomPanel(Landroid/view/View;)V

    .line 158
    iget-object v1, p0, Lcolor/support/dialog/ColorListDialog;->mItems:[Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcolor/support/dialog/ColorListDialog;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    invoke-direct {p0, v0}, Lcolor/support/dialog/ColorListDialog;->setupListPanel(Landroid/view/View;)V

    .line 161
    :cond_1
    iget-object v1, p0, Lcolor/support/dialog/ColorListDialog;->mBuilder:Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 162
    iget-object p0, p0, Lcolor/support/dialog/ColorListDialog;->mBuilder:Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private getAdapter()Landroid/widget/ListAdapter;
    .locals 3

    .line 252
    iget-object v0, p0, Lcolor/support/dialog/ColorListDialog;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcolor/support/dialog/ColorListDialog$Adapter;

    iget-object v1, p0, Lcolor/support/dialog/ColorListDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcolor/support/dialog/ColorListDialog;->mItems:[Ljava/lang/CharSequence;

    iget-object p0, p0, Lcolor/support/dialog/ColorListDialog;->mTextAppearances:[I

    invoke-direct {v0, v1, v2, p0}, Lcolor/support/dialog/ColorListDialog$Adapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;[I)V

    :cond_0
    return-object v0
.end method

.method private setupCustomPanel(Landroid/view/View;)V
    .locals 2

    .line 227
    iget-boolean v0, p0, Lcolor/support/dialog/ColorListDialog;->mHasCustom:Z

    if-eqz v0, :cond_1

    .line 228
    sget v0, Lcolor/support/v7/appcompat/R$id;->custom_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 229
    iget-object v0, p0, Lcolor/support/dialog/ColorListDialog;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcolor/support/dialog/ColorListDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget p0, p0, Lcolor/support/dialog/ColorListDialog;->mCustomRes:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 233
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setupListPanel(Landroid/view/View;)V
    .locals 1

    .line 239
    sget v0, Lcolor/support/v7/appcompat/R$id;->list_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 240
    invoke-direct {p0}, Lcolor/support/dialog/ColorListDialog;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    iget-object v0, p0, Lcolor/support/dialog/ColorListDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Lcolor/support/dialog/ColorListDialog$2;

    invoke-direct {v0, p0}, Lcolor/support/dialog/ColorListDialog$2;-><init>(Lcolor/support/dialog/ColorListDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method private setupMessage(Landroid/view/View;)V
    .locals 2

    .line 202
    sget v0, Lcolor/support/v7/appcompat/R$id;->message_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcolor/support/dialog/ColorListDialog;->mMessageView:Landroid/widget/TextView;

    .line 203
    iget-object v0, p0, Lcolor/support/dialog/ColorListDialog;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcolor/support/dialog/ColorListDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcolor/support/dialog/ColorListDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object p0, p0, Lcolor/support/dialog/ColorListDialog;->mMessageView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 207
    :cond_0
    sget v0, Lcolor/support/v7/appcompat/R$id;->list_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object p1, p0, Lcolor/support/dialog/ColorListDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcolor/support/dialog/ColorListDialog$1;

    invoke-direct {v0, p0}, Lcolor/support/dialog/ColorListDialog$1;-><init>(Lcolor/support/dialog/ColorListDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 168
    iget-object p0, p0, Lcolor/support/dialog/ColorListDialog;->mDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->cancel()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 175
    iget-object p0, p0, Lcolor/support/dialog/ColorListDialog;->mDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getDialog()Lcolor/support/v7/app/AlertDialog;
    .locals 1

    .line 186
    iget-object v0, p0, Lcolor/support/dialog/ColorListDialog;->mDialog:Lcolor/support/v7/app/AlertDialog;

    if-nez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcolor/support/dialog/ColorListDialog;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcolor/support/dialog/ColorListDialog;->mDialog:Lcolor/support/v7/app/AlertDialog;

    .line 189
    :cond_0
    iget-object p0, p0, Lcolor/support/dialog/ColorListDialog;->mDialog:Lcolor/support/v7/app/AlertDialog;

    return-object p0
.end method

.method public isShowing()Z
    .locals 0

    .line 198
    iget-object p0, p0, Lcolor/support/dialog/ColorListDialog;->mDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)Lcolor/support/dialog/ColorListDialog;
    .locals 0

    .line 263
    iput-object p1, p0, Lcolor/support/dialog/ColorListDialog;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method public setCustomView(I)Lcolor/support/dialog/ColorListDialog;
    .locals 0

    .line 126
    iput p1, p0, Lcolor/support/dialog/ColorListDialog;->mCustomRes:I

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lcolor/support/dialog/ColorListDialog;->mHasCustom:Z

    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lcolor/support/dialog/ColorListDialog;
    .locals 0

    .line 138
    iput-object p1, p0, Lcolor/support/dialog/ColorListDialog;->mCustomView:Landroid/view/View;

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lcolor/support/dialog/ColorListDialog;->mHasCustom:Z

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/dialog/ColorListDialog;
    .locals 0

    .line 91
    iput-object p1, p0, Lcolor/support/dialog/ColorListDialog;->mItems:[Ljava/lang/CharSequence;

    .line 92
    iput-object p2, p0, Lcolor/support/dialog/ColorListDialog;->mTextAppearances:[I

    .line 93
    iput-object p3, p0, Lcolor/support/dialog/ColorListDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcolor/support/dialog/ColorListDialog;
    .locals 0

    .line 115
    iput-object p1, p0, Lcolor/support/dialog/ColorListDialog;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcolor/support/dialog/ColorListDialog;
    .locals 1

    .line 104
    iget-object v0, p0, Lcolor/support/dialog/ColorListDialog;->mBuilder:Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    return-object p0
.end method

.method public show()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcolor/support/dialog/ColorListDialog;->mDialog:Lcolor/support/v7/app/AlertDialog;

    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcolor/support/dialog/ColorListDialog;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcolor/support/dialog/ColorListDialog;->mDialog:Lcolor/support/v7/app/AlertDialog;

    .line 151
    :cond_0
    iget-object p0, p0, Lcolor/support/dialog/ColorListDialog;->mDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

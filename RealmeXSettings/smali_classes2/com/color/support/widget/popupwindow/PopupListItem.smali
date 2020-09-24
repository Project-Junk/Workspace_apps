.class public Lcom/color/support/widget/popupwindow/PopupListItem;
.super Ljava/lang/Object;
.source "PopupListItem.java"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconId:I

.field private isEnable:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/color/support/widget/popupwindow/PopupListItem;->iconId:I

    .line 27
    iput-object p2, p0, Lcom/color/support/widget/popupwindow/PopupListItem;->title:Ljava/lang/String;

    .line 28
    iput-boolean p3, p0, Lcom/color/support/widget/popupwindow/PopupListItem;->isEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/color/support/widget/popupwindow/PopupListItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 37
    iput-object p2, p0, Lcom/color/support/widget/popupwindow/PopupListItem;->title:Ljava/lang/String;

    .line 38
    iput-boolean p3, p0, Lcom/color/support/widget/popupwindow/PopupListItem;->isEnable:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0, p1, p2}, Lcom/color/support/widget/popupwindow/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/PopupListItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/color/support/widget/popupwindow/PopupListItem;->iconId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/PopupListItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/color/support/widget/popupwindow/PopupListItem;->isEnable:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/color/support/widget/popupwindow/PopupListItem;->isEnable:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/color/support/widget/popupwindow/PopupListItem;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIconId(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/color/support/widget/popupwindow/PopupListItem;->iconId:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/color/support/widget/popupwindow/PopupListItem;->title:Ljava/lang/String;

    return-void
.end method

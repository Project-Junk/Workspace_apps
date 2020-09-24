.class Lcolor/support/design/widget/ColorTabLayout$PagerAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "ColorTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/design/widget/ColorTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/design/widget/ColorTabLayout;


# direct methods
.method constructor <init>(Lcolor/support/design/widget/ColorTabLayout;)V
    .locals 0

    .line 2604
    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$PagerAdapterObserver;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 2609
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$PagerAdapterObserver;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 2614
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$PagerAdapterObserver;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout;->populateFromPagerAdapter()V

    return-void
.end method

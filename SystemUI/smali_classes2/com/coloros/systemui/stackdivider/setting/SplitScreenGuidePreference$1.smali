.class Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$1;
.super Ljava/lang/Object;
.source "SplitScreenGuidePreference.java"

# interfaces
.implements Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$OnIndicatorDotClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->initView(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$1;->this$0:Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference$1;->this$0:Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;

    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->access$000(Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;)Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;->setCurrentItem(I)V

    return-void
.end method

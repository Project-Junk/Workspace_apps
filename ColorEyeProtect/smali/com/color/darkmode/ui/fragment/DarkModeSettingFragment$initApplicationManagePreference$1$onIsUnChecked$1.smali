.class final Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1$onIsUnChecked$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;->onIsUnChecked(Lcom/color/support/widget/ColorSwitch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1$onIsUnChecked$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1$onIsUnChecked$1;

    invoke-direct {v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1$onIsUnChecked$1;-><init>()V

    sput-object v0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1$onIsUnChecked$1;->INSTANCE:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1$onIsUnChecked$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
